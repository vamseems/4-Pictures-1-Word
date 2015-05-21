class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :tag
      t.binary :data
      t.string :filename
      t.string :mime_type

      t.timestamps
    end
  end
end
