class Child < ApplicationRecord
    belongs_to :provider
    belongs_to :parent

    has_many_attached :forms
end
