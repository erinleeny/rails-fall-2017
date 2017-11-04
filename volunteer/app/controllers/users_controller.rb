class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def user
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @event = Event.all
  end
  def index
    @users = User.all
    @events = Event.all
  end
  def create
    params.permit!
    @user = User.new(params[:user])
    if @user.save
      render action: :show
    else
      render action: :new
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    params.permit!
    @user = User.find(params[:id])
    if @user.update(params[:user])
      redirect_to @user
    else
      render action: :edit
    end
  end
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/users/new'
  end
end
