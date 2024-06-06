class CreateFilmsAsiatiquesLitteratureAsiatiquePlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_litterature_asiatique_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end