class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email
  has_many :user_games, serializer: UserGameSerializer
end
