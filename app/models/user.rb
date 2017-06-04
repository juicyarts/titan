class User < ApplicationRecord
  enum state: [ :enabled, :disabled]
  has_secure_password
end
