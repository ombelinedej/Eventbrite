class EventController < ApplicationController
  before_action :authenticate_user, only: [:create]

  def index
    @events = Event.all
  end

  def new
  end

  def show 
  end

  def create

    @event = Event.new(title: params["event_title"],
                      description: params["event_description"],
                      start_date: params["event_start_date"],
                      duration: params["event_duration"],
                      price: params["event_price"],
                      location: params["event_location"],
                      user_id: current_user.id),
    

  end




  end

end