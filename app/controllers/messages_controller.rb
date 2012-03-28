class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = current_user.messages.create(params[:message])
  end
end
