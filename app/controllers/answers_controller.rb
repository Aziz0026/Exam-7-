class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:format])

  end

  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      redirect_to question_path(@answer.question_id)
    else
      render 'new'
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    @question = Question.find(params[:format])
  end

  def update
    @answer = Answer.find(params[:id])

    if @answer.update(answer_params)
      redirect_to question_path(@answer.question_id)
    else
      render 'edit'
    end
  end

  def destroy
    @answer = Answer.destroy(params[:id])
    @question = Question.find(params[:format])
    redirect_to question_path(@question.id)
  end

  private

  def answer_params
    params.require(:answer).permit(:name, :correct, :question_id)
  end
end
