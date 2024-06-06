class CreateArtbooksCultures < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_cultures do |t|
      t.string :name

      t.timestamps
    end
  end
end