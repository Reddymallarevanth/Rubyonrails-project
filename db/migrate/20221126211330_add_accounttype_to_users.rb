class AddAccounttypeToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :accounttype, :string
  end
end
