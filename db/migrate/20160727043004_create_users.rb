class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.date :birth_date
      t.string :email
      t.string :fone
      t.string :cell_phone
      t.string :street
      t.string :neighborhood
      t.string :city
      t.string :state
      t.string :zip_code

      t.timestamps null: false
    end
  end
end
