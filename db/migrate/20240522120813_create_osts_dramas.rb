class CreateOstsDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :osts_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end
