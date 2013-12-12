# Geography,"total pop, year 2005","age 0-19, year 2005","age 65+, year 2005","Per Capita Income, year 2000","Persons Living Below 200% Poverty, year 2000 ","% all Persons Living Below 200% Poverty Level, year 2000",
# % adequacy prenatal care (kotelchuck),"% C-section deliveries, 2005-2008","Number of infant deaths, 2005-2008","Infant mortality rate (deaths per 1000 live births), 2005-2008",% low birthweight 2005-2008,"% multiple births, 2005-2008","% publicly financed prenatal care, 2005-2008","% teen births, 2005-2008",,

class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :Geography
      t.integer :total_pop
      t.integer :age_0_19
      t.integer :age_65_plus
      t.integer :per_capita_income
      t.float :persons_living_below_200_poverty
      t.float :adequacy_prenatal_care
      t.float :c_section_deliveries
      t.integer :infant_deaths
      t.float :infant_mortality_rate
      t.float :low_birthweight
      t.float :multiple_births
      t.float :publicly_financed_prenatal_care
      t.float :teen_births

      t.timestamps
    end
  end
end
