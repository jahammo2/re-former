class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  validates :username, 
            presence: true, 
            length: { in: 6..20 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, 
            presence: true, 
            length: { in: 6..20 },
            format: { with: VALID_EMAIL_REGEX }
  VALID_PASSWORD_REGEX = /(^[a-zA-Z]\w{3,14}$)/ 
  validates :password,
            format: { with: VALID_PASSWORD_REGEX }
end

