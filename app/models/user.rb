class User < ApplicationRecord
    has_secure_password
    has_many :headshots
    has_many :comments
end
