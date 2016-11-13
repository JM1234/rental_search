class Rental < ActiveRecord::Base
	belongs_to :user

	geocoded_by :address
	after_validation :geocode

  has_attached_file :image, styles: { medium: "600x450#"}, default_url: "http://www.clker.com/cliparts/4/8/3/5/1384392924101179310Bedroom.svg.med.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
	

end
