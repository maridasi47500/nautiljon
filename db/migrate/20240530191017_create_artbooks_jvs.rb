class CreateArtbooksJvs < ActiveRecord::Migration[7.1]
  def change
    create_table :artbooks_jvs do |t|
      t.string :name

      t.timestamps
    end
  end
end