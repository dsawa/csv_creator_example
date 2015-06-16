class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.boolean :rotting
      t.integer :age
      t.date :turn_date
    end
  end
end
