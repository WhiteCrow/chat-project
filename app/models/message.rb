class Message < ActiveRecord::Base
  validates_presence_of :sender_id, :receiver_id, :content
  belongs_to :sender, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
