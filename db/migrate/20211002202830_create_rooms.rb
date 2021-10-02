# frozen_string_literal: true

class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms, id: :uuid, default: -> { 'uuid_generate_v4()' } do |t|
      t.string :name

      t.timestamps
    end

    add_index :rooms, :name, unique: true
  end
end
