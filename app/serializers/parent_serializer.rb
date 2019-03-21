class ParentSerializer < ActiveModel::Serializer
  attributes :id, :name, :username
  has_many :children
end
