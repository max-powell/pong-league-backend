class Player < ApplicationRecord
    has_many :wins, class_name: 'Game', foreign_key: 'winner_id', dependent: :destroy
    has_many :losses, class_name: 'Game', foreign_key: 'loser_id', dependent: :destroy

    has_many :lost_to, through: :losses, source: :winner
    has_many :beaten, through: :wins, source: :loser

end
