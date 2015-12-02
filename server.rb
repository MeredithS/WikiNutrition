module App
	class Server <Sinatra::Base

		get ("/") do
		"Hello World"
		end

		get ("/articles") do
			@articles=Article.all
		end
	end
end
