class QuestionsController < ApplicationController

  ANSWERS = {
    question: "Silly question, get dressed and go to work!",
    message: "I don't care, get dressed and go to work!",
    work: "Great!"
  }

  def ask
  end

  def answer
    @question = params[:question]
    if @question.include? "?"
      @answer = ANSWERS[:question]
    elsif @question == "I am going to work"
      @answer = ANSWERS[:work]
    else
      @answer = ANSWERS[:message]
    end
  end
end
