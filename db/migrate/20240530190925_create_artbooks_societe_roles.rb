class CreateArtbooksSocieteRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_societe_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end