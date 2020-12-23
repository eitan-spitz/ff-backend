class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :level, :final_score, :score_in_round
end
