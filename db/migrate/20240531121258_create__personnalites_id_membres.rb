class CreatePersonnalitesIdMembres < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnalites_id_membres do |t|
      t.string :name

      t.timestamps
    end
  end
end