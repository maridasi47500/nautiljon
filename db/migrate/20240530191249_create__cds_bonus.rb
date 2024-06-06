class CreateCdsBonus < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds_bonus do |t|
      t.string :name

      t.timestamps
    end
  end
end