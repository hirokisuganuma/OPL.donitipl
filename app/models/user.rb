class User < ApplicationRecord
  has_many :questions
  has_many :answers
  has_secure_password
end
