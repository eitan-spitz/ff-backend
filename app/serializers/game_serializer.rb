class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :time_to_complete_round
end
