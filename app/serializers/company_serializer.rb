class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :logo, :vat_nr, :state

  has_many :branches
end
