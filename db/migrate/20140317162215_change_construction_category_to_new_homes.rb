class ChangeConstructionCategoryToNewHomes < ActiveRecord::Migration
  def change
    change_column :new_homes, :construction_category, :integer
    rename_column :new_homes, :construction_category, :construction_category_id
    add_index :new_homes, :construction_category_id
  end
end
