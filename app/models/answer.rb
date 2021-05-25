class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  validates :response,  presence: true
end
