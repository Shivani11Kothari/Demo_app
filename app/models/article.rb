class Article < ApplicationRecord
    acts_as_votable

    has_many :comments, dependent: :delete_all

    
    validates :title, presence: true, length:{minimum:5}
              
        
    
end