class EventsController < ApplicationController
  def new
  end

  def index
    if session[:user]
      state = User.where("id=?", session[:user_id]).limit(1).pluck(:state)
      @events = Event.where(["state = ?", state])
      @events_all = Event.all.limit(10)

    else
      redirect_to "/sessions/new"
      
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end
end
