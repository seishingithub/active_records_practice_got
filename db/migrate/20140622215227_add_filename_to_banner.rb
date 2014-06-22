class AddFilenameToBanner < ActiveRecord::Migration
  def change
    add_column :banners, :file_name, :string
  end
end
