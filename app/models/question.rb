class Question < ApplicationRecord
  
  def self.search(search) 
    if search
      where(['title LIKE ?', "%#{search}%"]) 
    else
      all 
    end
  end
    
  belongs_to :user, dependent: :destroy
  
  has_many :answers, through: :user
  #質問はユーザに紐づいた回答を持っている
  validates :title,  presence: true

  validates :content,  presence: true
end
