# frozen_string_literal: true

class Room < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :messages, -> { order(:created_at) }

  def name=(value)
    super value.to_s.titleize
  end
end
