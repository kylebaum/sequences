class GuessesController < ApplicationController
  def index
@first_guess = params["first"]
@second_guess = params["second"]
@third_guess = params["third"]

@first_guess.to_i
@second_guess.to_i
@third_guess.to_i

if @third_guess > @second_guess && @second_guess > @first_guess
      @game_result = "Yes!"
    elsif
      @game_result = "No"

end

    render("guesses/index.html.erb")

  end
def  answer
  # params = {"q"=>"Increasing numbers"}

  @user_answer = params["q"]
render("guesses/answer.html.erb")
end

end
