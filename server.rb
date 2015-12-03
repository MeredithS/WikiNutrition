module App
	class Server <Sinatra::Base

		get ("/") do
		"Hello World"
		end

		get ("/articles") do
			@articles=Article.all
			erb :index
		end

		get("/articles/:id") do
			@article=Article.find(params[:id])
			erb :show
		end
	end
end
