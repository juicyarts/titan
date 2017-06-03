class FactoryElement < ApplicationRecord
  belongs_to :branch
  enum state: [ :enabled, :disabled]
end
