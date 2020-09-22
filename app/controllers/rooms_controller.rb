class RoomsController < ApplicationController
  def new
    @rom = Room.new
  end
end
