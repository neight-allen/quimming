class Match < ApplicationRecord
  belongs_to :winner, class_name: "Clip"
  belongs_to :loser, class_name: "Clip"
  belongs_to :user
end
