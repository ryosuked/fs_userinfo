class CreateUserPersonals < ActiveRecord::Migration[7.0]
  def change
    create_table :user_personals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :reading_first_name
      t.string :reading_last_name
      t.integer :sex
      t.integer :age
      t.datetime :birthday
      t.string :address

      t.timestamps
    end
  end
end
