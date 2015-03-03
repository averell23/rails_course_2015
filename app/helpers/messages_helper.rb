module MessagesHelper
  def user_name_for(message)
    if message.user.blank?
      "Unknown User"
    else
      message.user.email
    end
  end
end
