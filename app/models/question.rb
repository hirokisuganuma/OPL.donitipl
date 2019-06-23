class Question < ApplicationRecord
  
  def self.search(search) 
    if search
      where(['title LIKE ?', "%#{search}%"]) 
    else
      all 
    end
  end
    
  belongs_to :user, dependent: :destroy
  
  has_many :answers
  
  validates :title,  presence: true

  validates :content,  presence: true
end
