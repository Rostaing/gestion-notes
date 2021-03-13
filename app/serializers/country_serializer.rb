class CountrySerializer < ActiveModel::Serializer
  attributes :id, :nom, :code, :membre

  has_many :users
  has_many :etudiants
end
