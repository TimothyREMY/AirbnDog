class Dog < ApplicationRecord
  has_many :join_table_stroll_dogs
  has_many :strolls, through: :join_table_stroll_dogs

  has_many :join_table_dog_dogsitters
  has_many :dogsitter, through: :join_table_dog_dogsitters
end
