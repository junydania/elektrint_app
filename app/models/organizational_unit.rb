class OrganizationalUnit < ApplicationRecord

  validates_presence_of  :unit_name

  before_save :capitalize_unit_name

  private

  def capitalize_unit_name
    self.unit_name = self.unit_name.downcase.titleize
  end

end
