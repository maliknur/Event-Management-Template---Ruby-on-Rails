class EventsController < ApplicationController
 
  def new
  end

  def index
    if session[:user]
      state = User.where("id=?", session[:user_id]).limit(1).pluck(:state)
      @events = Event.where(["state = ?", state])
      @events_all = Event.where(["state <> ?", state]).limit(10)

    else
      redirect_to "/sessions/new"
      
    end
  end

  def create
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>> #{params[:date]}"
    @event = Event.new(event_params)
    @event.state = params[:state]
    @event.date = params[:date]
    
    if @event.save
      flash[:notice] = "Event successfully created"
      flash[:color] = "valid"
      redirect_to "/events"
    else
      render "index"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
    @event = Event.find(params[:id])
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :location, :state, :user_id)

  end
end
