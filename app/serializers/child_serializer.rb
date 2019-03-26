class ChildSerializer < ActiveModel::Serializer
  attributes :id, :provider_id, :parent_id, :name, :image, :age, :address, :allergies, :balance, :forms
end
