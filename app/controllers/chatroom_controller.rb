# frozen_string_literal: true

# chatroom controller class
class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @text = Text.new
    @texts = Text.all
  end
end
