class CreatePetitesAnnoncesPays < ActiveRecord::Migration[7.1]
  def change
    create_table :_petites_annonces_pays do |t|
      t.string :name

      t.timestamps
    end
  end
end