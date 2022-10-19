# frozen_string_literal: true

class Text < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
end
