class WorkLevel < ApplicationRecord

  has_many :jobs
  validates_presence_of  :level_name

  before_save :capitalize_level_name



  private

  def capitalize_level_name
    self.level_name = self.level_name.downcase.titleize
  end

end
