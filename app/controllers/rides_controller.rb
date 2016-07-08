class RidesController < ApplicationController
  def new
      @ride = Ride.new(:user_id => params[:user_id], :attraction_id => params[:attraction_id])
      if @ride.save
      redirect_to user_path(@ride.user), :notice => @ride.take_ride
      else
        raise params.inspect
      end

    end
end
