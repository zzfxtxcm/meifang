class CreateInformationTypes < ActiveRecord::Migration
  def change
    create_table :information_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
