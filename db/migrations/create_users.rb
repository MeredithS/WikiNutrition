require_relative "../config"

class CreateUsers < ActiveRecord::Migration
	def up
		create_table :users do |t|
			t.string(:user_name)
			t.string(:password_digest)
			t.string(:f_name)
			t.string(:l_name)
			t.string(:e_mail)
		end
	end

	def down
		drop_table :users
	end
end

CreateUsers.migrate(ARGV[0])

