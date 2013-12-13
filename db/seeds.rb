# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

filename = Rails.root.join("db/data/mass_health_data.csv")

def valid(data)
  data.gsub(',','').gsub('$','').gsub('NA','') if data != nil
end

CSV.foreach(filename, headers: true) do |row|
  unless TownHealthRecord.exists?("geography" => row[0])
    TownHealthRecord.create!(
      "geography" => row[0],
      "total_pop" => valid(row[1]),
      "age_0_19" => valid(row[2]),
      "age_65_plus" => valid(row[3]),
      "per_capita_income" => valid(row[4]),
      "persons_living_below_200_poverty" => valid(row[5]),
      "percent_persons_living_below_200_poverty" => valid(row[6]),
      "adequacy_prenatal_care" => valid(row[7]),
      "c_section_deliveries" => valid(row[8]),
      "infant_deaths" => valid(row[9]),
      "infant_mortality_rate" => valid(row[10]),
      "low_birthweight" => valid(row[11]),
      "multiple_births" => valid(row[12]),
      "publicly_financed_prenatal_care" => valid(row[13]),
      "teen_births" => valid(row[14])
      )
  end
end
