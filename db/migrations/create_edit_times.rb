require_relative "../config"

class CreateEditTimes <ActiveRecord::Migration
	def up 
		create_table :edit_times do |t|
			t.datetime(:time)
		end
	end

	def down
		drop_table :edit_times
	end
end
