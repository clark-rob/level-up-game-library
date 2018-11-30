# frozen_string_literal: true


class Game < ApplicationRecord
  belongs_to :user
  # creates relation from games to user
end
