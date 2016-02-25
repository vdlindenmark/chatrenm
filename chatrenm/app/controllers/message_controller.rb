class MessageController < ApplicationController

	def show

	end

	def new

	end

	def create
		@message = Message.new(params[:article])

		@message.save
		redirect_to @message
	end

end
