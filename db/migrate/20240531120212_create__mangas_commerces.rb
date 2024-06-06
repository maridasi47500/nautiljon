class CreateMangasCommerces < ActiveRecord::Migration[7.1]
  def change
    create_table :_mangas_commerces do |t|
      t.string :name

      t.timestamps
    end
  end
end