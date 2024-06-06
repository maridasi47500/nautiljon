class CreateAnimesSocieteRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_societe_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end