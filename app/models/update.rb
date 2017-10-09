class Update < ApplicationRecord

belongs_to :user

has_attached_file :image,
                    :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :thumb=> "100x100#",
                                  :small  => "150x150>",
                                  :medium => "300x300>",
                                  :large =>   "500x500>" }: {}
                                 }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

validates :image, presence: true
validates :gender, presence: true
validates :location, presence: true
validates :phone, presence: true

end
