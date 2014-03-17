class AddOpeningToNewHomes < ActiveRecord::Migration
  def change
    add_column :new_homes, :opening, :integer
    add_index :new_homes, :opening
  end
end
