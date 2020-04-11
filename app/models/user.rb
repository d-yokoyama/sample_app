class User < ApplicationRecord
  #saveする前にemail_addressを小文字にする
  before_save { self.email = email.downcase}
  validates :name, presence: true, length: { maximum: 50 }
  #正規表現を定数に定義する
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }, presence: true
end
  