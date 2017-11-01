# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  validates :company, :title, :user, presence: true
end
