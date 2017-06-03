class Company < ApplicationRecord
  enum state: [ :enabled, :disabled]
  has_many :branches
end
