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
    @count = 0
    @count += 1
    render "visits_view.json.jb"
  end

  def bottles_action
    render "bottles_view.json.jb"
  end
end
