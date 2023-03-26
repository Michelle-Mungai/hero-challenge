class Heropower < ApplicationRecord
  belongs_to :hero
  belongs_to :power

  validates :strength, presence: true, inclusion: { in: %w(Strong Weak Average) }
end
