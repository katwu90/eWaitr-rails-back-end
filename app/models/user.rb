# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :menus
  has_many :customers
  has_many :menu_items, through: :menus
  has_many :orders, through: :customers
end
