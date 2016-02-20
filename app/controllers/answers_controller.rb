class AnswersController < ApplicationController
  def new
    @answer = Answer.new
    @question = Question.find(params[:format])
  end

  def create

  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
