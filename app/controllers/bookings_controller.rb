class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    params[:bookings].blank? ? @bookings = Booking.all : @bookings = Booking.where(id: params[:bookings]).all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    @booked_flight = Flight.find(params[:flight_id])
    @passenger_num = params[:passenger_num]
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @passenger_num = params[:passenger_num].to_i
    @created_bookings = []

    @passenger_num.times do |i|
      @booking = Booking.new(
        flight: Flight.find(params[:flight]),
        passenger: Passenger.new(name: params[:passengers][:"name#{i+1}"],
                         email: params[:passengers][:"email#{i+1}"]))
      @booking.save
      @created_bookings << @booking
    end
    flash[:notice] = "Your flight has been booked! Have a great trip!"
    redirect_to controller: 'bookings', action: 'index', bookings: @created_bookings
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booking_params
      params.require(:booking).permit(:flight, :user)
    end
end
