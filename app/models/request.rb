class Request < ActiveRecord::Base
  before_save { self.email = email.downcase }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
    uniqueness: { case_sensitive: false },
   format: { with: VALID_EMAIL_REGEX }

  validates :Person, presence: true
  validates :Person, uniqueness: true
   validates :Person,length: {minimum:5}
   validates :phone, presence: true
   validates :phone,length: {minimum:5,maximum: 20}
end
