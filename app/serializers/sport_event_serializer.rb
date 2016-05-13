class SportEventSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :sport, :time
end
