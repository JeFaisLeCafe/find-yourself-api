class CreateAnswersPoles < ActiveRecord::Migration[6.1]
  def change
    create_table :answers_poles do |t|
      t.references :Answer, null: false, foreign_key: true
      t.references :Pole, null: false, foreign_key: true

      t.timestamps
    end
  end
end
