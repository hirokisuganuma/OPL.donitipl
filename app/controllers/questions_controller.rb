class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @user = User.find(1)
    @question = @user.questions.build(question_params)
    if @question.save
      flash[:success] = "質問が完了しました。"
      #redirect_to user_path
    else
      redirect_to questions_new_path
    end
  end
  
private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end