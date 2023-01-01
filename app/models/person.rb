class Person < ApplicationRecord
    validates :name, presence: true
    validates :sex, inclusion: { in: %w(M F) }
    validates :birthdate, comparison: { less_than_or_equal_to: :deathdate }, allow_nil: true, unless: -> { deathdate.nil? }
    validates :deathdate, comparison: { greater_than_or_equal_to: :birthdate }, allow_nil: true, unless: -> { birthdate.nil? }
    validates :marriage_status, inclusion: { in: %w(S M D) }, allow_nil: true

    has_many :marriage_memberships
    has_many :marriages, through: :marriage_memberships, dependent: :destroy
    has_many :spouses, ->(person) { where.not(id: person.id) }, through: :marriages, source: :people, dependent: :destroy

    def active_marriages 
        marriages.where(termination_date: nil)
    end

    def active_spouses
        am = active_marriages
        sp = []
        for m in am
            sp << m.people.where.not.(id: id) 
        end
        spouses.select {|s| sp.include? s}
    end
end
