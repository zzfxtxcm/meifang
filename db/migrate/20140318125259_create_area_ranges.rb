class CreateAreaRanges < ActiveRecord::Migration
  def change
    create_table :area_ranges do |t|
      t.string :name

      t.timestamps
    end
  end
end
