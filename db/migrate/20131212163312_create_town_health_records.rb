class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography
      t.integer :total_pop
      t.integer :age_0_19
      t.integer :age_65_plus
      t.integer :per_capita_income
      t.float :persons_living_below_200_poverty
      t.float :percent_persons_living_below_200_poverty
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
