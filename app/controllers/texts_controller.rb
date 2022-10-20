class TextsController < ApplicationController
  before_action :require_user

  def create
    text = current_user.texts.build(text_params)
    if text.save
      ActionCable.server.broadcast "chatroom_channel", {foo: text.body}
    end
  end

  private

  def text_params
    params.require(:text).permit(:body)
  end

end