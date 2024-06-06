class CreatePersonnageDanimesAnimes < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_danimes_animes do |t|
      t.string :name

      t.timestamps
    end
  end
end