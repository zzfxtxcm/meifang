class CreateConstructionCategories < ActiveRecord::Migration
  def change
    create_table :construction_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
