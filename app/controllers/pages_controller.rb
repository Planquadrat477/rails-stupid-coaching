class PagesController < ApplicationController
  def ask
    @ask
  end

  def answer
    time = Time.now
    if params[:question].downcase == "hello"
       @answer = "Hellooo yooouuu"
    elsif params[:question].downcase.end_with?("what time is it?")
      @answer = "It's #{time}!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
