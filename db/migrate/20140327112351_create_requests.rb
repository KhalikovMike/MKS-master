class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :Person
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
