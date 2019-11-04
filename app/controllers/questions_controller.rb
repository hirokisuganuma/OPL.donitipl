class QuestionsController < ApplicationController

  def index
    @questions = Question.all.order(id: "DESC").search(params[:search])
  end

  def new
    @question = Question.new
  end
  
  def show
    @question = Question.find(params[:id])
    @answers = @question.answers.order(id: "DESC")
    @testarray = [["レディース",001],["メンズ",002],["キッズ", 003]]
  end
  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      flash[:success] = "質問が完了しました。"
      redirect_to questions_index_path
    else
      flash[:danger] = "投稿に失敗しました。"
      redirect_to user_path(current_user)
    end
  end
  
  
private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
