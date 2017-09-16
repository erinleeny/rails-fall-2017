class AnimalsController < ApplicationController
  def new
    @animal = Animal.new
  end
  def create
    params.permit!
    @animal = Animal.new(params[:animal])
    if @animal.valid?
      render action: :show
    else
      render action: :new
    end
    #@animal.name = params[:animal][:name]
    #@animal.age = params[:animal][:age]
    #@animal.kind = params[:animal][:kind]
  end
end
