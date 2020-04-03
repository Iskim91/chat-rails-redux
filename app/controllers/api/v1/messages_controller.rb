class Api::V1::MessagesController < ApplicationController
  before_action :set_channel, only: :index
  # def index
  #   messages = @channel.messages.order('created_at ASC')
  #   render json: messages
  # end
  # before_action :set_channel

  def index
    # raise
    messages = @channel.messages.order('created_at ASC')
    render json: messages # see Message.as_json method
  end

  def create
    # @message = Message.create(params.require(:message).permit(:content))
    # @message.user = currentUser
    # render json: @message # see Message.as_json method
    message = @channel.messages.build(content: params[:content])
    message.user = current_user
    message.save
    render json: message # see Message.as_json method
  end

  private

  def set_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end
end
