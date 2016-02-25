class MessageController < ApplicationController

	def index
		@messages = Message.all
	end

	def new

	end

	def create
		@message = Message.new(params[:article])

		@message.save
		redirect_to @message
	end

end
