class Member < ApplicationRecord
  has_many :posts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_save { self.email = email.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false },
                   length: { minimum: 6, maximum: 25 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6, maximum: 25 }
end
