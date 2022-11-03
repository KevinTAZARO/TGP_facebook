class Recipient < ApplicationRecord
    belongs_to :recipient, class_name: "User"
    belongs_to :private_message
    has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
end
