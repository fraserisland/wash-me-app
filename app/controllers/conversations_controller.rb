class ConversationsController < ApplicationController

  def index
      @conversations = current_user.mailbox.conversations
  end

  def show
    @conversation = current_user.mailbox.conversations.find(params[:id])
  end

  def new
    @recipient = User.find(params[:recipient_id])
  end

  def create
    @recipients = User.find(params[:recipient])
    receipt = current_user.send_message(@recipients, params[:body], params[:subject])
    redirect_to conversation_path(receipt.conversation)
  end

end
