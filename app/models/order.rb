# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :customer
  belongs_to :menu_item
  validates :quantity, :customer, :menu_item, presence: true
end
