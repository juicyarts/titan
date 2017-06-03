class User < ApplicationRecord
    enum state: [ :enabled, :disabled]
end
