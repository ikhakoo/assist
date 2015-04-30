class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

  def show
		@services = Services.find(params[:id])

	  if current_user
	    @booking = @services.bookings.build
	  end
	end

end
