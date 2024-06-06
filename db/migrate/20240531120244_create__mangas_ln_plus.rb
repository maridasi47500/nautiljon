class CreateMangasLnPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_ln_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end