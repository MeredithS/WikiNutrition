module App
	class Server <Sinatra::Base
		set :method_override, true
		enable :sessions

		get ("/") do
		erb :root
		end

		get ("/articles") do
			@articles=Article.all
			erb :index
		end

		get("/articles/new") do
			erb :article_new
		end

		get("/articles/:id") do
			@article=Article.find(params[:id])
			erb :show
		end

		post("/articles") do
			Article.create(title: params[:title], date_published: DateTime.now, content: params[:content], img_url: params[:img_url], user_id: 1)
			redirect to("/articles")
		end

		get ("/login") do
			erb :login
		end

		get("/users/new") do
			erb :user_new
		end

	end
end
