class CreateFilmsAsiatiquesCinemas < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_cinemas do |t|
      t.string :name

      t.timestamps
    end
  end
end