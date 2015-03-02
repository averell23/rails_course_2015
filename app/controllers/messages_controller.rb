class MessagesController < ApplicationController
  def index
    @messages = Message.all.limit(5)
  end

  def show
    @message = "This is message #{params[:id]}"
  end

  def new
    @message = Message.new
  end
end
