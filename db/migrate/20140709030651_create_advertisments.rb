class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :image
      t.string :say

      t.timestamps
    end
  end
end
