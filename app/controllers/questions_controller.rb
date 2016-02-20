class QuestionsController < ApplicationController
  def new
   @question = Question.new
   @test = Test.find(params[:format])
  end

  def edit
    @question = Question.find(params[:id])
    @test = Test.find(params[:format])
  end

  def update
    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to test_path(@question.test_id)
    else
      render 'edit'
    end
  end

  def show
    @question  = Question.find(params[:id])
    @answers = Answer.where(question_id: @question.id)
  end

  def destroy
    @question = Question.destroy(params[:id])
    @test = Test.find(params[:format])

    redirect_to test_path(@question.test_id)
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to test_path(@question.test_id)
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:name, :test_id)
  end
end
