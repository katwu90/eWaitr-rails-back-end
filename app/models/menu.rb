# frozen_string_literal: true

class Menu < ApplicationRecord
  belongs_to :user
  has_many :menu_items
  validates :title, presence: true
end
