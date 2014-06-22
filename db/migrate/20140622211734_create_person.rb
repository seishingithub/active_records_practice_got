class CreatePerson < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :description
      t.belongs_to :house, index: true

      t.timestamps
    end
  end
end
