class CalculatorController < ApplicationController
  #name must match in routes and filename
  def calculate
    @dropdown = params[:dropdown]
    if params[:dropdown] == "+"
      @answer = params[:x].to_i + params[:y].to_i
    elsif params[:dropdown] == "-"
      @answer = params[:x].to_i - params[:y].to_i
    elsif params[:dropdown] == "/"
      if params[:x].to_i == 0 || params[:y].to_i == 0
        @answer = 'undefined'
      elsif
        @answer = params[:x].to_f/params[:y].to_f
      end
    elsif params[:dropdown] == "*"
      @answer = params[:x].to_i*params[:y].to_i
    elsif params[:dropdown] == "^"
      @answer = params[:x].to_i**params[:y].to_i
    end
  end
end
