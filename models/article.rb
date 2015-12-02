class Article <ActiveRecord::Base
	belongs_to :user
	has_many :users, through: :article_edit_times
	has_and_belongs_to_many :categories
end