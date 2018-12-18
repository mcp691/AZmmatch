class QuizzesController < ApplicationController

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.create!(quiz_params)
    redirect_to @quiz
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

private

# Never trust parameters from the scary internet, only allow the white list through.
def quiz_params
  params.require(:quiz).permit(:name, :city, {:issues => []}, :gender, :race, :ability, :age, :religion, :class_background, :occupation, :immigration_status, :incarceration_status, :housing_status, :commitment)
end

end
