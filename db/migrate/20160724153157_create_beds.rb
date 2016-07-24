class CreateBeds < ActiveRecord::Migration
  def change
    create_table :beds do |t|
      t.integer :bedNumber
      t.references :place, index: true, foreign_key: true
      t.string :bedLocation
      t.boolean :occupied
      t.references :resident, index: true, foreign_key: true
      t.string :bedNotes

      t.timestamps null: false
    end
  end
end
