class EditTime <ActiveRecord::Base
	has_many :article_edit_times
	has_many :articles, through: :article_edit_times
	has_many :users, through: :article_edit_times
end
