# frozen_string_literal: true

# chatroom controller class
class ChatroomController < ApplicationController
  def index
    @texts = Text.all
  end
end
