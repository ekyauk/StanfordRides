class RideRequestController < ApplicationController

	def new
		@ride_request = RideRequest.new
	end

	def create
		@ride_request = RideRequest.new(params[:post])
		if @ride_request.save
			redirect_to @post
		else
			render 'new'
		end
	end
end
