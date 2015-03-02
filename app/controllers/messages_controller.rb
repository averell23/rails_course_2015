class MessagesController < ApplicationController
  def index
    render text: "Hello World"
  end

  def show
    @message = "This is message #{params[:id]}"
  end
end
