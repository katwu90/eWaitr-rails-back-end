# frozen_string_literal: true

class MenuItem < ApplicationRecord
  belongs_to :menu
  validates :name, :price, :menu_id, presence: true
  has_many :orders
end
