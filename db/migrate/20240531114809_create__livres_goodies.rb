class CreateLivresGoodies < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_goodies do |t|
      t.string :name

      t.timestamps
    end
  end
end