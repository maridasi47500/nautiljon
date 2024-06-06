class CreateFilmsAsiatiquesOrigines < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_origines do |t|
      t.string :name

      t.timestamps
    end
  end
end