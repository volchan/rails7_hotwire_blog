# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

  def username=(value)
    super value.to_s.titleize
  end
end
