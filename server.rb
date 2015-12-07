module App
	class Server <Sinatra::Base

		set :method_override, true
		enable :sessions

		get ("/") do
		erb :root
		end

		get ("/articles") do
			@user = User.find(session[:user_id]) if session[:user_id]
			articles=Article.all
			@sorted_articles = articles.sort_by {|art| art.title}
			@categories=Category.all
			erb :index
		end

		get("/articles/recent") do
			articles=Article.all
			art_edits=articles.map do |article| 
				article.edit_times.last
			end
			update_art_edits = art_edits.reject {|time| time == nil}
			if update_art_edits.length == 1
				@recent_edits = update_art_edits
			elsif update_art_edits.length >1
				@recent_edits=update_art_edits.sort {|a, b| b <=> a }
			end
			erb :recent_articles
		end

		get("/articles/sortby/:category") do
			@category = Category.find_by({name: params[:category]})
			@cat_arts = @category.articles
			erb :show_by_category
		end

		get("/articles/new") do
			redirect to "/login" if !session[:user_id]
			@categories = Category.all
			erb :article_new
		end

		get("/articles/:id") do
			@user = User.find(session[:user_id]) if session[:user_id]
			@article = Article.find(params[:id])
			@categories = Category.all
			@art_cats=@article.categories		
			
			erb :show
		end

		get("/articles/:id/edit") do
			redirect to "/" if !session[:user_id]
			@article = Article.find(params[:id])
			erb :edit_article
		end



		post("/articles") do

			article=Article.create(title: params[:title], date_published: Time.now, content: params[:content], img_url: params[:img_url], user_id: session[:user_id])
			if params[:category] != "" && params[:drop_down]
				if article.categories.find_by({name: params[:drop_down].upcase}) == nil
					cat1=Category.find_by({name: params[:drop_down].upcase})
					article.categories<<cat1
				end
				if Category.find_by({name: params[:category].upcase}) == nil
					cat2=Category.create(name: params[:category].upcase.chomp)
					article.categories<<cat2
				elsif Category.find_by({name: params[:category].upcase}) != nil && article.categories.find_by({name: params[:category].upcase}) == nil
					cat2 = Category.find_by({name: params[:category].upcase})
					article.categories<<cat2
				end
			elsif params[:category] == "" && article.categories.find_by({name: params[:drop_down].upcase}) == nil
				cat1=Category.find_by({name: params[:drop_down].upcase})
				article.categories<<cat1
			elsif params[:drop_down] == nil && article.categories.find_by({name: params[:category].upcase}) == nil
				if Category.find_by({name: params[:category].upcase}) == nil 
					cat2 = Category.create(name: params[:category].upcase.chomp)
					article.categories<<cat2
				else
					cat2 = Category.find_by({name: params[:category].upcase})
					article.categories<<cat2
				end
			end
			redirect to("/articles")
		end

		patch("/articles/:id") do

			id = params[:id]
			article=Article.find(params[:id])
			article.update(title: params[:title], content: params[:content], img_url: params[:img_url])
			edit_time=EditTime.create(time: Time.now)
			article_edit_time=ArticleEditTime.create(article_id: params[:id].to_i, edit_time_id: edit_time.id, user_id: session[:user_id])
			redirect to ("articles/#{id}")

		end

		delete("/articles/:id") do
			art = Article.find(params[:id])
			art.destroy
			redirect to ("/articles")
		end

		post("/articles/:id/edit/categories") do
			id = params[:id]
			article=Article.find(params[:id])
			if params[:category] != "" && params[:drop_down]
				if article.categories.find_by({name: params[:drop_down].upcase}) == nil
					cat1=Category.find_by({name: params[:drop_down].upcase})
					article.categories<<cat1
				end
				if Category.find_by({name: params[:category].upcase}) == nil
					cat2=Category.create(name: params[:category].upcase.chomp)
					article.categories<<cat2
				elsif Category.find_by({name: params[:category].upcase}) != nil && article.categories.find_by({name: params[:category].upcase}) == nil
					cat2 = Category.find_by({name: params[:category].upcase})
					article.categories<<cat2
				end
			elsif params[:category] == "" && article.categories.find_by({name: params[:drop_down].upcase}) == nil
				cat1=Category.find_by({name: params[:drop_down].upcase})
				article.categories<<cat1
			elsif params[:drop_down] == nil && article.categories.find_by({name: params[:category].upcase}) == nil
				if Category.find_by({name: params[:category].upcase}) == nil 
					cat2 = Category.create(name: params[:category].upcase.chomp)
					article.categories<<cat2
				else
					cat2 = Category.find_by({name: params[:category].upcase})
					article.categories<<cat2
				end
			end
			redirect to ("/articles/#{id}")
		end

		get ("/login") do
			erb :login
		end

		post ("/sessions") do
			user=User.find_by({user_name: params[:user_name]}).try(:authenticate, params[:password])
			if user
				session[:user_id] = user.id
				redirect to ("/articles")
			else
				redirect to ('/login')
			end
		end

		delete ("/sessions") do
			session[:user_id] = nil
			redirect to ("/")
		end

		get("/users/new") do
			erb :user_new
		end

		post("/users") do
			if params.values.include? ""
				redirect to ("/users/new")
			else
				User.create(user_name: params[:user_name], password: params[:password], f_name: params[:f_name], l_name: params[:l_name], e_mail: params[:e_mail])
				redirect to ("/login")
			end
		end

	end
end
