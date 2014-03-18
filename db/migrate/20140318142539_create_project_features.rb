class CreateProjectFeatures < ActiveRecord::Migration
  def change
    create_table :project_features do |t|
      t.string :name

      t.timestamps
    end
  end
end
