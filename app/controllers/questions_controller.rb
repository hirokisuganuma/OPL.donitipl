class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def def new
  end
  
end
