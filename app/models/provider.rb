class Provider < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :children
    has_many :parents, through: :children

end
