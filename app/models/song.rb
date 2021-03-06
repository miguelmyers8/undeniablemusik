class Song < ApplicationRecord
  validates :audio, presence: true

  has_attached_file :audio, :use_timestamp => false
  validates_attachment_content_type :audio, :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]

  #validates_attachment_content_type :avatar, :content_type => /.*/

end
