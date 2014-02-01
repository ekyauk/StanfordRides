class CreateRideRequests < ActiveRecord::Migration
  def change
    create_table :ride_requests do |t|
    	t.string		:name
    	t.string		:destination
    	t.string		:departure
    	t.date			:departure_date
    end
  end
end
