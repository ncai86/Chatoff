class MessagesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @messages = Message.all
  end

  def create
    @message = current_user.messages.create(params[:message])
    @user_id = session["warden.user.user.key"][1][0]

  end
end
