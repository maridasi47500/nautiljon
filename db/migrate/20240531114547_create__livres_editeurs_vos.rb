class CreateLivresEditeursVos < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_editeurs_vos do |t|
      t.string :name

      t.timestamps
    end
  end
end