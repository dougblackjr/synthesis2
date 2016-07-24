class CreateDemographics < ActiveRecord::Migration
  def change
    create_table :demographics do |t|
      t.references :resident, index: true, foreign_key: true
      t.string :address
      t.string :city
      t.string :zip
      t.string :state
      t.string :phoneNumber
      t.string :gender
      t.string :race
      t.string :ethnicity
      t.string :aliases
      t.string :veteranStatus
      t.string :primaryLanguage
      t.string :otherLanguagesSpoken
      t.string :maritalStatus
      t.string :nameOfSignificantOther
      t.string :listOfChildren
      t.references :drug, index: true, foreign_key: true
      t.string :drugsUsed
      t.string :descriptionOfLastUse
      t.date :dateOfLastUse
      t.float :incomeAmount
      t.string :incomeDescription
      t.string :probationParole
      t.string :socialWorker

      t.timestamps null: false
    end
  end
end
