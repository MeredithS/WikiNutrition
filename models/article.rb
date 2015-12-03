class Article <ActiveRecord::Base
	belongs_to :user
	has_many :article_edit_times 
	has_many :edit_times, through: :article_edit_times
	has_and_belongs_to_many :categories
end