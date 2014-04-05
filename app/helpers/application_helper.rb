module ApplicationHelper
  def login?
    current_user.present?
  end

  def faye_send(channel, &block)
    faye_data = {channel: channel, data: capture(&block)}
    uri = URI.parse('http://localhost:8081/faye')
    ::Net::HTTP.post_form(uri, message: faye_data.to_json)
  end

  # only use to app/views/users/chat.slim
  def message_owner_side(message)
    if message.sender == current_user
      'left'
    else
      'right'
    end
  end
end
