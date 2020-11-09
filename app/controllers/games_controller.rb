class ScoreController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(9)
  end

  def score
  end
end
