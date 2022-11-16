class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :purchases
  has_many :categories

  validates :name,                 presence: true, length: { minimum: 3, maximum: 25 }
  validates :email, :password,      presence: true
end
