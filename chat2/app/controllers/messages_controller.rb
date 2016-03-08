class MessagesController < ApplicationController
  def new
  end

  def index
  	@message = Message.all
  end

  def create
  	@message = Message.new(message_params)

  	@message.save
  	redirect_to :back
  end

  private
  	def message_params
    	params.require(:messages).permit(:name, :content)
  	end
end