class Gossip < ApplicationRecord
    belongs_to :user
    has_many :gossip_tags
    has_many :tags, through: :gossip_tags
    has_many :comments
    has_many :like_comments, through: :comments
    has_many :like_gossips


    validates :content, presence: true
    validates :title, presence: true, length: {in: 3..14}
end
