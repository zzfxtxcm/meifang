class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.integer :user_id
      t.integer :category
      t.string :title
      t.string :style
      t.string :thumb
      t.string :keywords
      t.text :description
      t.text :content
      t.integer :listorder
      t.integer :status

      t.timestamps
    end
  end
end
