class CreateRideOffers < ActiveRecord::Migration
  def change
    create_table :ride_offers do |t|
    	t.string		:name
    	t.string		:destination
    	t.string		:departure
    	t.date			:departure_date
    	t.integer		:number_seats
    end
  end
end
