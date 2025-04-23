class GamesController < ApplicationController
  def new
    session[:letters] = (1..10).map { ('A'..'Z').to_a.sample }
    @letters = session[:letters]
  end

  def score
    @letters = session[:letters]
    @letter = params[:letters]
  end
end
