class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps
    end
  end
end
