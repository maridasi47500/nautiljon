class CreateLivresDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end