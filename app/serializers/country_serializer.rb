class CountrySerializer < ActiveModel::Serializer
  attributes :id, :nom, :code, :membre
end
