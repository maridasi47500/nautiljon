class CreateAnimesPublicAvertis < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_public_avertis do |t|
      t.string :name

      t.timestamps
    end
  end
end