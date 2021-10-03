class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages, id: :uuid do |t|
      t.references :room, null: false, foreign_key: true, type: :uuid
      t.string :author_id
      t.text :body

      t.timestamps
    end
  end
end
