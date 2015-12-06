require_relative "../config"

class CreateArticleEditTimes <ActiveRecord::Migration
	def up
		create_table :article_edit_times do |t|
			t.integer(:article_id)
			t.integer(:edit_time_id)
			t.integer(:user_id)
		end
	end

	def down
		drop_table :article_edit_times
	end
end

CreateArticleEditTimes.migrate(ARGV[0])
