class CreateMangasEncoursVos < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_encours_vos do |t|
      t.string :name

      t.timestamps
    end
  end
end