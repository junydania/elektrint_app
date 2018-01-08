class JobFamily < ApplicationRecord

  validates_presence_of  :family_name

  before_save :capitalize_family_name


  private

  def capitalize_family_name
    self.family_name = self.family_name.downcase.titleize
  end

end


