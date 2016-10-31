class GuessesController < ApplicationController
  def index
    @first_guess = params["first"].to_i
    @second_guess = params["second"].to_i
    @third_guess = params["third"].to_i

    g = Solution.new
    g.first_guess = @first_guess
    g.second_guess = @second_guess
    g.third_guess = @third_guess
    if g.first_guess != nil && g.second_guess != nil && g.third_guess != nil
      if @third_guess > @second_guess && @second_guess > @first_guess
        @game_result = "Yes!"
      elsif
        @game_result = "No."
      end
      g.outcome = @game_result
      g.save
    end


    @all_numbers = Solution.all


    render("guesses/index.html.erb")

  end
  def answer
    # params = {"q"=>"Increasing numbers"}

    @user_answer = params["q"]
    render("guesses/answer.html.erb")
  end

  def clear
    Solution.delete_all
    render("guesses/index.html.erb")
  end

end
