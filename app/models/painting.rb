class Painting < ActiveRecord::Base
	belongs_to :gallery
	validates :title, presence: true
	mount_uploader :image, ImageUploader
end