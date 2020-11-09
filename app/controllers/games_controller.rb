require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = ('a'..'z').to_a.sample(9)
  end

  def score
    word = params[:result]
    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    user_word = open(url).read
    @exist = JSON.parse(user_word)
    if @exist['found'] == true
      @count = @exist['length']
    else
      @try_again = 'Your word does not exist'
    end
  end
end
