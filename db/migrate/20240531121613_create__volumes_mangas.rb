class CreateVolumesMangas < ActiveRecord::Migration[7.1]
  def change
    create_table :_volumes_mangas do |t|
      t.string :name

      t.timestamps
    end
  end
end