class Article < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: :user_id, required: false
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
end
