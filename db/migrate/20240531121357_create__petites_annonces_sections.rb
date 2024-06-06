class CreatePetitesAnnoncesSections < ActiveRecord::Migration[7.1]
  def change
    create_table :_petites_annonces_sections do |t|
      t.string :name

      t.timestamps
    end
  end
end