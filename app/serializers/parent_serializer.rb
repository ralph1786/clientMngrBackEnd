class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :children
end
