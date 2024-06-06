class CreateAnimesLnPlus < ActiveRecord::Migration[7.1]
  def change
    create_table :animes_ln_plus do |t|
      t.string :name

      t.timestamps
    end
  end
end