class CreateGrants < ActiveRecord::Migration[7.0]
  def change
    create_table :grants do |t|
      t.string :name

      t.timestamps
    end
  end
end
