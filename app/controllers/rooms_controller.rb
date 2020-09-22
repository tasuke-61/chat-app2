class RoomsController < ApplicationController
  def new
    @rom = Room.new
  end

  def create
    @room = Room.new(room_paramus)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_paramus
    params.require(:room).permit(:name, user_ids:[])
  end

end
