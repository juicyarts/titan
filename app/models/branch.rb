class Branch < ApplicationRecord
  enum state: [:enabled, :disabled]
  belongs_to :company
  has_many :factory_elements, dependent: :destroy
end
