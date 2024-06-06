class CreatePersonnageDanimesDoubleurRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_danimes_doubleur_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end