class CreateVoters < ActiveRecord::Migration[4.2]
	def change 
		create_table :voters do |t|
		t.string :full_name
		t.string :party
		end
	end
end
