class User < ApplicationRecord

  has_secure_password

  validates :password_digest, :email, { presence: true }
  validates_uniqueness_of :email

end
