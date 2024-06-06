class CreateLightNovelsOsts < ActiveRecord::Migration[7.1]
  def change
    create_table :_light_novels_osts do |t|
      t.string :name

      t.timestamps
    end
  end
end