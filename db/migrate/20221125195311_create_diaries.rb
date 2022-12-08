class CreateDiaries < ActiveRecord::Migration[7.0]
  def change
    create_table :diaries do |t|
      t.string :image
      t.string :name
      t.string :description
      t.decimal :price
      t.datetime :deadline

      t.timestamps
    end
  end
end
