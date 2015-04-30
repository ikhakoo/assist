class BookingsController < ApplicationController

	def new
  	@booking = Booking.new
  end

  def create
  	load_service
  
  	@booking = @service.bookings.build(res_params)
    @booking.user = current_user

  	if @booking.save
      redirect_to root_path, notice: 'booking created successfully. Please check your e-mail for confirmation'
      # UserMailer.conf_email(current_user).deliver_now
    else
      redirect_to root_path notice: 'booking creation failed.'
    end
  end

  def edit
  end

  def destroy
  end

private
  def res_params
    params.require(:booking).permit(:booking_date, :booking_time)
  end

  def load_service
    @service = service.find(params[:service_id])
  end
end
