class CreateLivresCultures < ActiveRecord::Migration[7.1]
  def change
    create_table :_livres_cultures do |t|
      t.string :name

      t.timestamps
    end
  end
end