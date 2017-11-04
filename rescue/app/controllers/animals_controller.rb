class AnimalsController < ApplicationController
  def new
    @animal = Animal.new

  end
  def edit
    
  end
  def index
    @animals = Animal.all
  end

  def create
    params.permit!

    @animal = Animal.new(params[:animal])
    if @animal.save
      render action: :show

    else
      render action: :new

    end
    #@animal.name = params[:animal][:name]
    #@animal.age = params[:animal][:age]
    #@animal.kind = params[:animal][:kind]
  end
  def show
    @animal = Animal.find(params[:id])
  end
end
