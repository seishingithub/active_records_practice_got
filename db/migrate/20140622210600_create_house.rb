class CreateHouse < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.string :name

      t.timestamps
    end
  end
end
