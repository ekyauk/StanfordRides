class RidesController < ApplicationController
  def index
  end

  def create
  	puts params[:name]
  	puts params[:departure]
  	puts params
  	if params[:user][:user_type] == "Driver"
	  	puts 'is driver'
	  else
	  	puts 'is rider'
	  end
	  render 'confirmation'
  end
end
