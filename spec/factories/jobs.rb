FactoryBot.define do
  factory :job do
    job_name "MyString"
    sbg_grade 1
    primary_cluster
    secondary_cluster
    job_family
    business_unit
    organizational_unit
    division
    work_level
  end
end

