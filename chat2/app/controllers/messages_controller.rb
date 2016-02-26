class MessagesController < ApplicationController
  def new
  end

  def index
  	@message = Message.all
  end

  def create
  	@message = Message.new(message_params)

  	@message.save
  	redirect_to @message
  end

  private
  	def message_params
    	params.require(:message).permit(:name, :content)
  	end

end