class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :gid
      t.string :name
      t.integer :identification

      t.timestamps
    end
  end
end
