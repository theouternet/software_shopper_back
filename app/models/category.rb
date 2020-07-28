class Category < ApplicationRecord
    has_many :software_categories
    has_many :software, through: :software_categories
end
