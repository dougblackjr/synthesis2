class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :description
      t.boolean :standardtest
      t.integer :standardDetectionTime
      t.integer :maxDetectionTime

      t.timestamps null: false
    end
  end
end
