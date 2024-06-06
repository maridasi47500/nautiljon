class CreateFilmsAsiatiquesGeneriquesParoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_generiques_paroles do |t|
      t.string :name

      t.timestamps
    end
  end
end