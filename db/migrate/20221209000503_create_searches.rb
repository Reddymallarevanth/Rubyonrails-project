class CreateSearches < ActiveRecord::Migration[7.0]
  def change
    create_table :searches do |t|
      t.string :age
      t.string :gender
      t.string :profession

      t.timestamps
    end
  end
end
