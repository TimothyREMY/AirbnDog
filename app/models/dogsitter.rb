class Dogsitter < ApplicationRecord
  has_many :strolls
  has_many :join_table_dog_dogsitters
  has_many :dogs, through: :join_table_dog_dogsitters
end
