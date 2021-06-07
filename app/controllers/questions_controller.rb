class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end
  def answer
    @question = params[:question]
    @answer = "I don't care, get dressed and go to work!"
    if @question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @answer = 'Great!'
    end
  end
end
