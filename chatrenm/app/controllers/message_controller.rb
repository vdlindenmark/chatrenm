class MessageController < ApplicationController

	def index
		@messages = Message.all
	end

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(params[:article])

		@message.save
		redirect_to @message
	end
	private
	  	def message_params
	    	params.require(:message).permit(:name, :text)
	  	end
end
