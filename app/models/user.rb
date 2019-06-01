class User < ApplicationRecord
  has_many :questions
  has_secure_password
end
