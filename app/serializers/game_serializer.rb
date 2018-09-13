class GameSerializer < ActiveModel::Serializer
  attributes :game_id, :score

  def game_id
    object.id
  end

  def score
    [{
      user_id: object.player_1_id,
      scores: object.player_1.total_score
      },
      {
      user_id: object.player_2_id,
      scores: object.player_2.total_score
      }
    ]
  end
end
