class ArticleEditTime <ActiveRecord::Base
	belongs_to :article
	belongs_to :edit_time
	belongs_to :user
end
