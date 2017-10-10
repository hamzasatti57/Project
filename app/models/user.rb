class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
         
has_many :orders, dependent: :destroy
has_many :contacts, dependent: :destroy
has_many :projs, dependent: :destroy
has_many :themes, dependent: :destroy
has_many :scripts, dependent: :destroy
has_many :mobapps, dependent: :destroy
has_many :icons, dependent: :destroy
has_many :webapis, dependent: :destroy
has_many :mores, dependent: :destroy
has_many :textures, dependent: :destroy
has_many :photos, dependent: :destroy

validates :location, presence: true
validates :name,:presence => true

end
