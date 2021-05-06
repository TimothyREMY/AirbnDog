class JoinTableDogDogsitter < ApplicationRecord
  belongs_to :dog
  belongs_to :dogsitter
end
