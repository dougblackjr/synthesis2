class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.boolean :active
      t.date :admissionDate
      t.string :admissionStatus
      t.references :bed, index: true, foreign_key: true
      t.boolean :blackout
      t.date :blackoutDate
      t.date :closeDate
      t.string :closeReason
      t.string :locker
      t.string :module
      t.references :program, index: true, foreign_key: true
      t.string :referralSource
      t.string :referralReason
      t.references :resident, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
