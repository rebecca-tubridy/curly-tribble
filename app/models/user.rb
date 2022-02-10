class User < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 3}
    validates :last_name, presence: true, length: { minimum: 5}
    validates :email, presence: true
    validates :password, presence: true, length: { minimum: 6}
end
