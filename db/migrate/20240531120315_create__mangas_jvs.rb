class CreateMangasJvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_jvs do |t|
      t.string :name

      t.timestamps
    end
  end
end