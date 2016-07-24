class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.references :place, index: true, foreign_key: true
      t.string :programType

      t.timestamps null: false
    end
  end
end
