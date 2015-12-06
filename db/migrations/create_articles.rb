require_relative "../config"

class CreateArticles <ActiveRecord::Migration
	def up
		create_table :articles do |t|
			t.string(:title)
			t.datetime(:date_published)
			t.string(:content)
			t.string(:img_url)
			t.integer(:user_id)
		end
	end

	def down
		drop_table :articles
	end
end

CreateArticles.migration(ARGV[0])
