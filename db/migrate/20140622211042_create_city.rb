class CreateCity < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
