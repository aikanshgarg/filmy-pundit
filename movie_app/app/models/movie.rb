class Movie < ApplicationRecord
	searchkick
	belongs_to :user
	has_many :reviews

	# "400x600#" means image will be cropped to 400x600

	 has_attached_file :image, styles: { medium: "400x600#"}
 	 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
