class CreateRecipients < ActiveRecord::Migration[7.0]
  def change
    create_table :recipients do |t|
      t.belongs_to :recipient, index: true
      t.belongs_to :private_message, index: true
      
      t.timestamps
    end
  end
end
