class CreateDramasProgrammes < ActiveRecord::Migration[7.1]
  def change
    create_table :_dramas_programmes do |t|
      t.string :name

      t.timestamps
    end
  end
end