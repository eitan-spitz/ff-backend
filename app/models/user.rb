class User < ApplicationRecord
    has_many :user_games
    has_many :games, through: :user_games

    has_secure_password

    validates :username, uniqueness: { case_sensitive: false }
end
