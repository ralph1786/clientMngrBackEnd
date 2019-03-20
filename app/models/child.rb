class Child < ApplicationRecord
    belongs_to :provider
    belongs_to :parent
end
