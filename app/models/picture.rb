class Picture < ActiveRecord::Base
  belongs_to :livingroom

  has_attached_file :picture, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/
end
