class SearchPresenter

  def initialize(word)
    @word = word
  end

  def word
    response = Faraday.get("https://od-api.oxforddictionaries.com/api/v1/inflections/en/#{@word}")
    require "pry"; binding.pry
    JSON.parse(response.body, symbolize_names: true)
    end

  end
