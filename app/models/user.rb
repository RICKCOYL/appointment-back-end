class User < ApplicationRecord
  has_many :urgents, dependent: :destroy
  has_many :listings, dependent: :destroy
  has_secure_password
  validates_presence_of :username, :email

VALID_EMAIL_REGEX= /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

    validates :email , presence: true,uniqueness:{case_sensetive:false},
    format:{with:VALID_EMAIL_REGEX,multiline:true}
  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness: { case_sensitive: false }
end
