class Documentexport < ActiveRecord::Base
  attr_accessible :title, :author, :corp_author, :year, :state_country, :grade_level_group, :grade_level_number, :keywords
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |document|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end