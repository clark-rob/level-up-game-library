class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :developer, :year, :copy, :system, :multiplayer
end
