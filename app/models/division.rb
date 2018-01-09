class Division < ApplicationRecord

  validates_presence_of  :division_name

  before_save :capitalize_division_name

  private

  def capitalize_division_name
    self.division_name = self.division_name.downcase.titleize
  end

end
