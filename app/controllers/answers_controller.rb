class AnswersController < ApplicationController
    
    def create
  @question = Question.find(params[:id])
  @answer = @question.answers.create(answer_params)
    if @answer.save
      flash[:success] = "回答を投稿しました。"
      redirect_to question_path(@question)
    else
      flash[:danger] = "回答に失敗しました。"
      redirect_to question_path(@question)
    end
    end
    
    private

  def answer_params
    params.require(:answer).permit(:response)
  end
end
