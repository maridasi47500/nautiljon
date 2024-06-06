class CreateBrevesActualiteMinis < ActiveRecord::Migration[7.1]
  def change
    create_table :_breves_actualite_minis do |t|
      t.string :name

      t.timestamps
    end
  end
end