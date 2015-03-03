class MessagesController < ApplicationController
  def index
    @messages = Message.limit(15).order(created_at: :desc)
  end

  def show
    @message = "This is message #{params[:id]}"
  end

  def new
    @message = Message.new
  end

  def create # Create a new thing
    @message = Message.create!(params.require(:message).permit(:message_text))
    redirect_to action: :index 
  end
end
