class Post < ActiveRecord::Base
	validates :image, presence: true
	validates_with AttachmentSizeValidator, attributes: :image, less_than: 10.megabytes
	has_attached_file :image, styles: {medium: "720x"}
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
