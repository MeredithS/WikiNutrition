class Article <ActiveRecord::Base
	belongs_to :user
	has_many :article_edit_times 
	has_many :edit_times, through: :article_edit_times
	has_and_belongs_to_many :categories

	def markdown_renderer
		if @markdown_renderer 
			@markdown_renderer
		else
			@markdown_renderer = Redcarpet::Markdown.new(Redcarpet::Render::HTML.new, {})
		end
	end

	def to_html
		markdown_renderer.render(content)
	end
end
