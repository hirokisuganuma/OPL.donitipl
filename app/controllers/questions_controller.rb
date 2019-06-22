class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(id: "DESC").search(params[:search])
  end

  def new
    @question = Question.new
  end
  
  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      flash[:success] = "質問が完了しました。"
      redirect_to questions_index_path
    else
      redirect_to questions_new_path
    end
  end
  
  
private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
