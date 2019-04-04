class Question < ApplicationRecord
  belongs_to :user, dependent: :destroy
end
