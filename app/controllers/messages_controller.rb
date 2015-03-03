class MessagesController < ApplicationController

  before_action :authenticate_user!, except: :index
  # before_action :do_something

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
    @message = Message.new(params.require(:message).permit(:message_text))
    if @message.save
      redirect_to action: :index
     else
       render action: :new
     end
  end

  private 

  def do_something
    render text: "Gotcha"
  end
end
