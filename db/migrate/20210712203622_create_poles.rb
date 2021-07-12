class CreatePoles < ActiveRecord::Migration[6.1]
  def change
    create_table :poles do |t|
      t.string :name

      t.timestamps
    end
  end
end
