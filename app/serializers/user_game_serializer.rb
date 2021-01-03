class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :score
end
