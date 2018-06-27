class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: true
  validates :email, uniqueness: true
  mount_uploader :picture, PhotoUploader

  has_many :reviews
  has_many :bills
  has_many :restaurants


  def bills
  restaurants.map { |restaurant| restaurant.bills }.flatten
  end

end
