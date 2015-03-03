class Message < ActiveRecord::Base
  validates :message_text, presence: true
  validates :user_id, presence: true
  
  belongs_to :user
end
