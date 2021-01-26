class User < ApplicationRecord
    has_many :headshots
    has_many :comments
end
