class ConverterController < ApplicationController
  def index
    @first_c = params[:first]
    @second_c = params[:second]
    @num = params[:num].to_f
    if @first_c == 'c' && @second_c == 'f'
      @newnum = @num * 9 / 5 + 32
    elsif @first_c == 'f' && @second_c == 'c'
      @newnum = ((@num - 32) * 5 / 9).round
      puts @newnum
    elsif @first_c == 'k' && @second_c == 'c'
      @newnum = (@num - 273.15).round
    elsif @first_c == 'c' && @second_c == 'k'
      @newnum = (@num + 273.15).round
    elsif @first_c == 'k' && @second_c == 'f'
      @newnum = ((@num - 273.15) * 9 / 5 + 32).round
    elsif @first_c == 'f' && @second_c == 'k'
      @newnum = (((@num - 32) * 5 / 9) + 273.15).round
    end
  end
end
