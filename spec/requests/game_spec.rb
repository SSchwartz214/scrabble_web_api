require 'rails_helper'

describe 'Game API' do
  it 'sends scores' do
    josh = User.create(id: 1, name: "Josh")
    sal = User.create(id: 2, name: "Sal")

    game = Game.create(player_1: josh, player_2: sal)

    josh.plays.create(game: game, word: "sal", score: 15)
    sal.plays.create(game: game, word: "josh", score: 16)

    get "/api/v1/games/1"

    expect(response).to be_successful

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
