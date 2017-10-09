class Texture < ApplicationRecord

belongs_to :user

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
has_attached_file :file

		validates :name,:presence => true,
 format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :description, presence: true
validates :tags, presence: true
validates :image, presence: true
validates :price,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 1, :maximum => 15 }


    validates :licence, presence: true
	
end
