require 'rails_helper'

describe 'Game API' do
  it 'sends scores' do
    p1 = User.create(name: "Seth")
    p2 = User.create(name: "Joe")
    game = Game.create(player_1_id: p1.id, player_2_id: p2.id)
    p1_score = p1.plays.create(game_id: 1, word: "hi", score: 15)
    p2_score = p2.plays.create(game_id: 1, word: "bye", score: 16)
    
    get "/api/v1/games/1"

    expect(response).to be_successful
    require "pry"; binding.pry
    score = JSON.parse(response.body, symbolize_names: true)

    return_json =  {
      "game_id":1,
      "scores": [
        {
          "user_id":1,
          "score":15
        },
        {
          "user_id":2,
          "score":16
        }
      ]
    }

    expect(score).to eq(return_json)
  end
end
