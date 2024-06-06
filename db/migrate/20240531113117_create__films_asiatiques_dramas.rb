class CreateFilmsAsiatiquesDramas < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_dramas do |t|
      t.string :name

      t.timestamps
    end
  end
end