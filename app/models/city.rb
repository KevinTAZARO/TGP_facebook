class City < ApplicationRecord
    has_many :users
    has_many :gossips, through: :users
    has_many :comments, through: :users
end
