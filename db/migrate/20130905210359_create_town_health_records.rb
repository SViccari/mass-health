class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_pop
      t.integer :age_19
      t.integer :age_65_plus
      t.integer :per_capita_income_year
      t.integer :living_below_poverty
      t.decimal :pct_persons_below
      t.decimal :pct_prenatal_care_kc
      t.decimal :percent_csection
      t.integer :infant_deaths
      t.decimal :infant_mortality_rate_live_births
      t.decimal :pct_low_birthweight
      t.decimal :pct_multiple_births
      t.decimal :pct_financed_prenatal_care
      t.decimal :pct_teen_births

      t.timestamps
    end
  end
end
