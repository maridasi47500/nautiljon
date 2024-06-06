class CreateDramasDvds < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_dvds do |t|
      t.string :name

      t.timestamps
    end
  end
end