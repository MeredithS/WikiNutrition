class User <ActiveRecord::Base
	has_many :articles
	has_many :article_edit_times
	has_many :edit_times, through: :article_edit_times
end
