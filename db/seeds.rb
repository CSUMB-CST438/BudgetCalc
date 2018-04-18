4# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  
#   Character.create(name: 'Luke', movie: movies.first)

Budget.destroy_all

budget1 = {income: 5500.0, house: 12.00, elec: 34.00, credit: 40.00,
 gas: 90.00, car: 60, insur: 100, water: 200, money: 133.3}

budget2 = { income: 10000.0, house: 12.00, elec: 34.00, credit: 40.00,
 gas: 90.00, car: 60, insur: 1000, water: 200, money: 133.3}

budget3 = { income: 9000.0, house: 12.00, elec: 34.00, credit: 40.00,
 gas: 90.00, car: 60, insur: 100, water: 200, money: 133.3}

budget4 = { income: 6500.0, house: 12.00, elec: 34.00, credit: 40.00,
 gas: 90.00, car: 60, insur: 100, water: 200, money: 133.3}

budgets = [budget1,budget2,budget3,budget4]

budgets.each do |budget|
Budget.create!(budget)
end