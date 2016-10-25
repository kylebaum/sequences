class GuessesController < ApplicationController
  def index
@first_guess = params["first"]
@second_guess = params["second"]
@third_guess = params["third"]

    render("guesses/index.html.erb")

  end
def  answer
  # params = {"q"=>"Increasing numbers"}

  @user_answer = params["q"]
render("guesses/answer.html.erb")
end

end
