class CreateGoodiesMatieres < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_matieres do |t|
      t.string :name

      t.timestamps
    end
  end
end