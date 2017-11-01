class JobSerializer < ActiveModel::Serializer
  attributes :id, :company, :title, :url, :date_applied, :status, :recruiter_name, :recruiter_email, :recruiter_phone, :notes
end
