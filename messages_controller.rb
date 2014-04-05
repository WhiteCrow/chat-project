class MessagesController < FayeRails::Controller
  observe Message, :after_create do |new_message|
  end
end
