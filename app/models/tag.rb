class Tag < ApplicationRecord
    has_many :gossip_tags
    has_many :gossips, through: :gossip_tags
    has_many :comments, through: :gossips
    has_many :like_comments, through: :comments
end
