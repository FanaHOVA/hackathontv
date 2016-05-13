class BarSerializer < ActiveModel::Serializer
  attributes :id, :address, :name, :phone, :email
end
