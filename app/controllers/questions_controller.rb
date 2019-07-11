class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @questions = params[:question]
    return @answer = 'Great!' if @questions == 'I am going to work'

    if @questions.include?('?')
      return @answer = 'Stupid question. Get dressed and go to work!'
    end

    @answer = "I don't care. Get dressed and go to work!"
  end
end
