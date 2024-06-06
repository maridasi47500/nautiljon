class CreatePhotobooksCds < ActiveRecord::Migration[7.1]
  def change
    create_table :_photobooks_cds do |t|
      t.string :name

      t.timestamps
    end
  end
end