class Owner < ApplicationRecord
  has_attached_file  :image,
  styles: {large: "640x640>", medium: "300x300>", thumb: "150x150#" }, :use_timestamp => false
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
