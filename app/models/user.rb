# frozen_string_literal: true

class User < ApplicationRecord
  self.implicit_order_column = 'created_at'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
end