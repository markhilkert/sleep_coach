class Digestion < ApplicationRecord
  belongs_to :sleep

  validates :sleep_id, uniqueness: { scope: :type }
end
