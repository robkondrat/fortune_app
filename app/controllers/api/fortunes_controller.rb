class Api::FortunesController < ApplicationController
  def random_fortune_action
    @fortunes = [
                "You'll be rich!",
                "You'll be poor!",
                "You'll be happy!"
              ]
    render "random_fortune_view.json.jb"
  end

  def random_number_action
    @numbers = [*1..60]
    render "random_number_view.json.jb"
  end

  def visits_action
    render "visits_view.json.jb"
  end

  def bottles_action
    beer = 99
    index = 0

    while beer > 2
      render "#{beer} bottles of beer on the wall, #{beer} bottles of beer."
      beer -= 1
      render "Take one down and pass it around, #{beer} bottles of beer on the wall."
    end

    render "#{beer} bottles of beer on the wall, #{beer} bottles of beer"
    beer -= 1
    render "Take one down and pass it around, #{beer} bottle of beer on the wall."
    render "#{beer} bottle of beer on the wall, #{beer} bottle of beer."
    beer -= 1
    render "Take one down and pass it around, no more bottles of beer on the wall."
    render "No more bottles of beer on the wall, no more bottles of beer."
    beer = 99
    render "Go to the store and buy some more, #{beer} bottles of beer on the wall."
  end
end
