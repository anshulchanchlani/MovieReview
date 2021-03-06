class Movie < ActiveRecord::Base
  searchkick
  belongs_to :user
  has_many :reviews
  has_attached_file :image, styles: { medium: "400x600#" }

  Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.9.1-Q16'

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
