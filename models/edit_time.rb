class EditTime <ActiveRecord::Base
	has_many :articles, through: :article_edit_times
end
