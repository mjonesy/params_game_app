class PagesController < ApplicationController
  def caps
    @my_name = params[:name].upcase
  end

  def a_name
    @my_name = params[:name]

    if @my_name.first == 'a'
      @begins_with_a = true
    else
      @begins_with_a = false
    end
  end

  def guess
    winning_number = 42

    if params[:number].to_i == 0
      @message = "Try a number next time."
    elsif params[:number].to_i > winning_number
      @message = "Too High"
    elsif params[:number].to_i < winning_number
      @message = "Too Low"
    elsif params[:number].to_i == winning_number
      @message = "You are correct!!!"
    end
  end

  def url
    @message = params[:penguins]
  end
end







