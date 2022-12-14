class Marriage < ApplicationRecord
    has_many :marriage_memberships, dependent: :destroy
    has_many :people, through: :marriage_memberships
end
