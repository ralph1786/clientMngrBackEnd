class Parent < ApplicationRecord
    has_secure_password
    has_many :children
    has_many :providers, through: :children
    validates :username, uniqueness: { case_sensitive: false }
end
