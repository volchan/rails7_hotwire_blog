# frozen_string_literal: true

class User < ApplicationRecord
  self.implicit_order_column = 'created_at'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :email, presence: true
  validates :username, presence: true
end
