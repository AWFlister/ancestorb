class Person < ApplicationRecord
    validates :name, presence: true
    validates :sex, inclusion: { in: %w(M F) }
    validates :birthdate, comparison: { less_than_or_equal_to: :deathdate }, allow_nil: true, unless: -> { deathdate.nil? }
    validates :deathdate, comparison: { greater_than_or_equal_to: :birthdate }, allow_nil: true, unless: -> { birthdate.nil? }
    validates :marriage_status, inclusion: { in: %w(S M D) }, allow_nil: true
end
