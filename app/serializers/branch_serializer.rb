class BranchSerializer < ActiveModel::Serializer
  attributes :id, :name, :state, :logo

  has_many :factory_elements
end
