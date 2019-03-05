class ConverterController < ApplicationController
  def index
    @first_c = params[:first]
    @second_c = params[:second]
    @num = params[:num].to_i
    if @first_c == 'c' && @second_c == 'f'
      @num = @num * 9 / 5 + 32
    end
  end
end
