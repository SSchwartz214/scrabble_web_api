class GameSerializer < ActiveModel::Serializer
  attributes :id, :score

  def score
    # game = Game.find_by(id: params[:id])

    [{
      user_id: game.user_id,
      scores: game.plays.score
      },
      {
      user_id: game.user_id,
      scores: game.plays.score
      }
    ]
  end
end
