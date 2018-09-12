require 'rails_helper'

describe 'Game API' do
  it 'sends scores' do
    

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
