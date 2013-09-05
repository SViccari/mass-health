# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
headers =
  [ :town,
    :total_pop,
    :age_19,
    :age_65_plus,
    :per_capita_income_year,
    :living_below_poverty,
    :pct_persons_below,
    :pct_prenatal_care_kc,
    :percent_csection,
    :infant_deaths,
    :infant_mortality_rate_live_births,
    :pct_low_birthweight,
    :pct_multiple_births,
    :pct_financed_prenatal_care,
    :pct_teen_births
  ]

CSV.foreach('db/data', headers: true) do |row|
  record_hash = {}
  headers.each_with_index do | header, i |
    record_hash[header] = row[i]
  end

    record = TownHealthRecord.new(record_hash) 

  # if record.nil?
  #   record = TownHealthRecord.new
  # else
  #   record
  # end
  record.save!
end

# rails generate model TownHealthRecord town:string total_pop:integer  age_19:integer age_65_plus:integer  per_capita_income_year:integer  living_below_poverty:integer  pct_persons_below:decimal  pct_prenatal_care_kc:decimal percent_csection:decimal infant_deaths:integer  infant_mortality_rate_live_births:decimal  pct_low_birthweight:decimal pct_multiple_births:decimal pct_financed_prenatal_care:decimal  pct_teen_births:decimal



