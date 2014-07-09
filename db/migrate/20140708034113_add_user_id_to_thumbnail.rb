class AddUserIdToThumbnail < ActiveRecord::Migration
  def change
    add_column :thumbnails, :user_id, :integer
  end
end
