class Thumbnail < ActiveRecord::Base
	has_many :posts, :dependent => :destroy
	accepts_nested_attributes_for :posts, :allow_destroy => true
	mount_uploader :thumb_image, ImageUploader
	belongs_to :user
end
