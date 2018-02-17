class Contact < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, allow_blank: true }
    # validates :email, presence: true
    validates :name, presence: true
    validates :content, presence: true, length: { maximum: 140 }
    
    
    
    # with_options unless: -> { :name? || :content? } do 
    #     validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    # end
end


