Given("the following jobs exist") do |table|
  table.hashes.each do |hash|
    hash["job_family"] = JobFamily.find_by(family_name: hash["job_family"])
    hash["business_unit"] = BusinessUnit.find_by(unit_name: hash["business_unit"])
    hash["organizational_unit"] = OrganizationalUnit.find_by(unit_name: hash["organizational_unit"])
    hash["division"] = Division.find_by(division_name: hash["division"])
    hash["primary_cluster"]  = PrimaryCluster.find_by(cluster_name: hash["primary_cluster"])
    hash["secondary_cluster"] = SecondaryCluster.find_by(cluster_name: hash["secondary_cluster"])
    hash["work_level"] = WorkLevel.find_by(level_name: hash["work_level"])
    create(:job, hash)
  end
end