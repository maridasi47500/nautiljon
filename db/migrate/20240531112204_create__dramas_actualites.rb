class CreateDramasActualites < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_actualites do |t|
      t.string :name

      t.timestamps
    end
  end
end