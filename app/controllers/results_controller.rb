class ResultsController < ApplicationController
  def show
   @test = Test.find(params[:id])
   @results = Result.where(test_id: @test.id)
  end

  def create
    @result = Result.new(result_params)
    @test = Test.find(@result.test_id)

    if @result.save
      redirect_to result_path(@test.id)
    else
      render 'new'
    end
   end

  def destroy
    @result = Result.find(params[:id])
    @test = Test.find(params[:format])
    @result.destroy
    redirect_to result_path(@test.id)
  end

  def new
    @result = Result.new
    @test = Test.find(params[:format])
    @questions = Question.where(test_id: @test.id)
  end

  private

  def result_params
    params.require(:result).permit(:name, :surname, :group, :test_id)
  end
end