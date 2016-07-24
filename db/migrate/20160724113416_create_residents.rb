class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :ssn
      t.string :picture
      t.boolean :has_active_admission
      t.boolean :restricted
      t.references :place, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
