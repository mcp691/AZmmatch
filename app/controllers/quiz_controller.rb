class QuizController < ApplicationController

  def index
  #store all the organizations that match the name searched
  @organizations = Organization.where("name LIKE ? ", "%#{params[:organization]}%")  
end

end
