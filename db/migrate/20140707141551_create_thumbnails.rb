class CreateThumbnails < ActiveRecord::Migration
  def change
    create_table :thumbnails do |t|
      t.text :thumb_post
      t.string :thumb_title
      t.string :thumb_image

      t.timestamps
    end
  end
end
