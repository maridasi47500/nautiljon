class CreateLivresStatutPublications < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_statut_publications do |t|
      t.string :name

      t.timestamps
    end
  end
end