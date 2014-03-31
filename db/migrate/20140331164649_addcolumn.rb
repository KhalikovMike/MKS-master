class Addcolumn < ActiveRecord::Migration
  def change
    add_column :requests, :image_uid, :string
  end
end
