class CreateLockers < ActiveRecord::Migration
  def change
    create_table :lockers do |t|
      t.integer :lockerNumber
      t.string :lockerCombo
      t.boolean :inUse
      t.references :resident, index: true, foreign_key: true
      t.string :lockerNotes

      t.timestamps null: false
    end
  end
end
