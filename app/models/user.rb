class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :booking
  has_many :reviews#, dependent: :destroy
  has_many :Favourit#, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :latitude, presence: true
  # validates :longitude, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
end

#hell
