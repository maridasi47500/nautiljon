class CreateFilmsAsiatiquesCds < ActiveRecord::Migration[7.1]
  def change
    create_table :_films_asiatiques_cds do |t|
      t.string :name

      t.timestamps
    end
  end
end