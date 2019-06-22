class Question < ApplicationRecord
  has_many :questions
  def self.search(search) 
    if search
      where(['title LIKE ?', "%#{search}%"]) 
    else
      all 
    end
  end
    
  belongs_to :user, dependent: :destroy

  validates :title,  presence: true

  validates :content,  presence: true
end
