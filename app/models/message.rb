class Message < ActiveRecord::Base
  validates :message_text, presence: true
end
