class DataTable < ApplicationRecord
  def self.clean!
    all.order(created_at: :desc).offset(5999).delete_all
  end
end
