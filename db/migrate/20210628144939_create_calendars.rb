class CreateCalendars < ActiveRecord::Migration[5.2]
	def change
		create_table :calendars do |t|
			t.string :title
			t.boolean :check
			t.datetime :start_time
		end
	end
end
