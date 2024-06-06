class CreateCdsJvs < ActiveRecord::Migration[7.1]
  def change
    create_table :_cds_jvs do |t|
      t.string :name

      t.timestamps
    end
  end
end