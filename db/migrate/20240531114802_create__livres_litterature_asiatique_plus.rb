class CreateLivresLitteratureAsiatiquePlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_litterature_asiatique_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end