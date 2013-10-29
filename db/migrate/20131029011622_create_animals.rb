class CreateAnimals < ActiveRecord::Migration
  def up
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.integer :owner_id
    end
  end

  def down
    drop_table :animals
  end
end
