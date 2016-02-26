class MessagesController < ApplicationController
  def new
  end

  def index
  end

  def create
  render plain: params[:message].inspect
  end

end
