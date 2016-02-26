class MessagesController < ApplicationController
  def new
  end

  def index
  end

  def create
  	@message = Message.new(params.require(:message).permit(:name, :content))

  	@message.save
  	redirect_to @message
  end

end
