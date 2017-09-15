class CalculatorController < ApplicationController
  #name must match in routes and filename
  def calculate
    if params[:dropdown] == "+"
      @answer = params[:x].to_i + params[:y].to_i
    elsif params[:dropdown] == "-"
      @answer = params[:x].to_i - params[:y].to_i
    elsif params[:dropdown] == "/"
      @answer = params[:x].to_f/params[:y].to_f
    elsif params[:dropdown] == "X"
      @answer = params[:x].to_i*params[:y].to_i
    elsif params[:dropdown] == "^"
      @answer = params[:x].to_i**params[:y].to_i
    end
  end
end
