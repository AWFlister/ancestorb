class MarriageMembership < ApplicationRecord
    belongs_to :person
    belongs_to :marriage
end
