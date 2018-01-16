class AddComptencyJobFamilyBusinessUnitOrganizationUnitDivisionPrimaryClusterSecondaryClusterToJob < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :competence, index: true, foreign_key: true
    add_reference :jobs, :job_family, index: true, foreign_key: true
    add_reference :jobs, :business_unit, index: true, foreign_key: true
    add_reference :jobs, :organizational_unit, index: true, foreign_key: true
    add_reference :jobs, :division, index: true, foreign_key: true
    add_reference :jobs, :primary_cluster, index: true, foreign_key: true
    add_reference :jobs, :secondary_cluster, index: true, foreign_key: true
  end
end


