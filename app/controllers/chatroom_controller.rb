# frozen_string_literal: true

# chatroom controller class
class ChatroomController < ApplicationController
  def index
    @messages = Text.all
  end
end
