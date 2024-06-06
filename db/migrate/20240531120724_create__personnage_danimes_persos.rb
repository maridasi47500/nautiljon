class CreatePersonnageDanimesPersos < ActiveRecord::Migration[7.1]
  def change
    create_table :_personnage_danimes_persos do |t|
      t.string :name

      t.timestamps
    end
  end
end