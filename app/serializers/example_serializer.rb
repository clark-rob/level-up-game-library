# frozen_string_literal: true

class ExampleSerializer < ActiveModel::Serializer
  attributes :id, :text, :editable

  # is resource able to be edited
  def editable
    scope == object.user
  end
end
