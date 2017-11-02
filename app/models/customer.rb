# frozen_string_literal: true

class Customer < ApplicationRecord
  belongs_to :user
  validates :name, :seat, presence: true
  has_many :orders
end
