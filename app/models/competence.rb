class Competence < ApplicationRecord

  belongs_to :job
  validates_presence_of  :skill


end
