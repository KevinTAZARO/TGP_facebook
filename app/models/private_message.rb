class PrivateMessage < ApplicationRecord
    belongs_to :sender, class_name: "User"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
end
