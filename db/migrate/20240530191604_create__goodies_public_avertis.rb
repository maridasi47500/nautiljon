class CreateGoodiesPublicAvertis < ActiveRecord::Migration[7.1]
  def change
    create_table :_goodies_public_avertis do |t|
      t.string :name

      t.timestamps
    end
  end
end