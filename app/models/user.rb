class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
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
end
