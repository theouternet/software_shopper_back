class Software < ApplicationRecord
    has_many :software_categories
    has_many :categories, through: :software_categories

    validates :name, presence: true
    validates :description, presence: true

end
