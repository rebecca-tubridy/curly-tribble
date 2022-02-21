class User < ApplicationRecord
    has_many :articles
    validates :first_name, presence: true, length: { minimum: 3}
    validates :last_name, presence: true, length: { minimum: 3}
    validates :email, presence: true
    validates :password, presence: true, length: { minimum: 6}

    def full_name
        "#{first_name} #{last_name}" 
    end
end

