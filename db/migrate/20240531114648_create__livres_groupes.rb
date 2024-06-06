class CreateLivresGroupes < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_groupes do |t|
      t.string :name

      t.timestamps
    end
  end
end