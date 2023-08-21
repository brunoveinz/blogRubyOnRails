class Article < ApplicationRecord
    include Visible
  # has many para asociacion y dependent es para borrar en cascada la relacion 
    has_many :comments, dependent: :destroy

  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end