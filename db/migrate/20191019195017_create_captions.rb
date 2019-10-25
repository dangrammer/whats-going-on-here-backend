class CreateCaptions < ActiveRecord::Migration[6.0]
  def change
    create_table :captions do |t|
      t.string :content
      t.integer :likes
      t.references :picture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
