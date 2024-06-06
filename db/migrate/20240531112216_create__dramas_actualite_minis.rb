class CreateDramasActualiteMinis < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_actualite_minis do |t|
      t.string :name

      t.timestamps
    end
  end
end