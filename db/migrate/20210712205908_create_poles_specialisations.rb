class CreatePolesSpecialisations < ActiveRecord::Migration[6.1]
  def change
    create_table :poles_specialisations do |t|
      t.references :Pole, null: false, foreign_key: true
      t.references :Specialisation, null: false, foreign_key: true

      t.timestamps
    end
  end
end
