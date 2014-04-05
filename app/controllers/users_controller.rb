class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def chat
    @user = User.find(params[:id])
    @messages = current_user.messages_with(@user).last(6)

    if params[:message] and params[:message][:content].present?
      @message = send_msg
      respond_to do |format|
        format.js
      end
    end
  end

  private
    def send_msg
      Message.create!(sender_id: current_user.id,
                  receiver_id: @user.id,
                  content: params[:message][:content])
    end

end
