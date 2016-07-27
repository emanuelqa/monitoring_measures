class CreateMeasures < ActiveRecord::Migration
  def change
    create_table :measures do |t|
      t.date :date
      t.float :arm
      t.float :waist
      t.float :hip
      t.float :calf
      t.float :thigh
      t.float :weigth
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
