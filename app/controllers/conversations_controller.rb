class ConversationsController < ApplicationController
  def index
    @conversations = current_user.mailbox.conversations
  end

  def half_show
    @conversation = current_user.mailbox.conversations.find(params[:id])
  end


end
