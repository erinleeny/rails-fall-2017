class EventsController < ApplicationController
  def new
    @event = Event.new
    @user = User.find(params[:user_id])
  end
  def show
    @user = User.find(params[:user_id])
    @event = Event.find(params[:id])
  end
  def index
    @user = User.find(params[:user_id])
    @events = Event.all
  end
  def create
    params.permit!
    @user = User.find(params[:user_id])
    @event = @user.events.create(params[:event])
    if @event.save
      render action: :show
    else
      render action: :new
    end
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    params.permit!
    @event = Event.find(params[:id])
    if @event.update(params[:user])
      redirect_to @event
    else
      render action: :edit
    end
  end
  def destroy
    @user = User.find(params[:user_id])
    event = Event.find(params[:id])
    event.destroy
    redirect_to @user
  end
end
