class Job < ApplicationRecord

  before_save :capitalize_job_name

  has_many :competences, inverse_of: :job
  accepts_nested_attributes_for :competences,
                                reject_if: :all_blank, allow_destroy: true
  belongs_to :business_unit
  belongs_to :division
  belongs_to :job_family
  belongs_to :organizational_unit
  belongs_to :primary_cluster
  belongs_to :secondary_cluster
  belongs_to :work_level

  validates_presence_of  :job_name,
                         :sbg_grade,
                         :business_unit_id,
                         :division_id,
                         :job_family_id,
                         :organizational_unit_id,
                         :primary_cluster_id,
                         :secondary_cluster_id,
                         :work_level_id

  private

  def capitalize_job_name
    self.job_name = self.job_name.downcase.titleize
  end

end
