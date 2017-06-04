# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([[ name: 'Star Wars' ], [ name: 'Lord of the Rings' ]])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
c1 = Company.create(name: 'Titan Inc.', state: 0)
c2 = Company.create(name: 'Steel Heroes', state: 1)
c3 = Company.create(name: "Metal Bro's", state: 1)

Branch.destroy_all
b1 = Branch.create(name: 'Department West', state: 0, company: c1)
b2 = Branch.create(name: 'Department East', state: 1, company: c1)
b3 = Branch.create(name: 'Department North', state: 0, company: c1)
b4 = Branch.create(name: 'Department South', state: 1, company: c1)

b5 = Branch.create(name: 'Trash Sector', state: 0, company: c3)
b6 = Branch.create(name: 'Doom Sector', state: 0, company: c3)
b7 = Branch.create(name: 'Speed Sector', state: 1, company: c3)
b8 = Branch.create(name: 'Pagan Sector', state: 0, company: c3)

b9 = Branch.create(name: 'Unit Europe', state: 1, company: c2)
b10 = Branch.create(name: 'Unit Asia', state: 1, company: c2)
b11 = Branch.create(name: 'Unit Australia', state: 0, company: c2)
b12 = Branch.create(name: 'Unit Afrika', state: 0, company: c2)
b13 = Branch.create(name: 'Unit Ameriak', state: 1, company: c2)

FactoryElement.destroy_all
FactoryElement.create(name: 'Betamethasone Dipropionate', state: 0, branch: b1)
FactoryElement.create(name: 'Seborrheic', state: 1, branch: b2)
FactoryElement.create(name: 'Readybath TPC', state: 0, branch: b3)
FactoryElement.create(name: 'CYCLOPHOSPHAMIDE', state: 0, branch: b4)
FactoryElement.create(name: 'EQUALINE', state: 0, branch: b5)
FactoryElement.create(name: 'Quinapril', state: 1, branch: b6)
FactoryElement.create(name: 'Oxygen', state: 1, branch: b7)
FactoryElement.create(name: 'Delsym', state: 0, branch: b8)
FactoryElement.create(name: 'Equisetum Viscum', state: 0, branch: b9)
FactoryElement.create(name: 'Diltiazem Hydrochloride', state: 0, branch: b10)
FactoryElement.create(name: 'InstantFOAM alcohol hand sanitizer', state: 0, branch: b11)
FactoryElement.create(name: 'Lovenox', state: 0, branch: b12)
FactoryElement.create(name: 'fexofenadine hydrochloride', state: 0, branch: b13)
FactoryElement.create(name: 'Accident - Injury Rescue', state: 0, branch: b1)
FactoryElement.create(name: 'equaline heartburn prevention', state: 1, branch: b2)
FactoryElement.create(name: 'Greasewood', state: 0, branch: b3)
FactoryElement.create(name: 'SILICEA', state: 0, branch: b4)
FactoryElement.create(name: 'Ultra Tuss', state: 1, branch: b5)
FactoryElement.create(name: 'FAGUS GRANDIFOLIA POLLEN', state: 1, branch: b6)
FactoryElement.create(name: 'Molds - Mold Mix 10', state: 1, branch: b7)
FactoryElement.create(name: 'DAILY CARE FOAMING CLEANSER', state: 0, branch: b8)
FactoryElement.create(name: 'PHENYTOIN SODIUM', state: 1, branch: b9)
FactoryElement.create(name: 'Amlodipine Besylate', state: 0, branch: b10)
FactoryElement.create(name: 'MORPHINE SULFATE', state: 1, branch: b11)
FactoryElement.create(name: 'Furosemide', state: 0, branch: b12)
FactoryElement.create(name: 'Anti-bacterial Fresh Aloe Hand', state: 0, branch: b13)
FactoryElement.create(name: 'Citalopram', state: 0, branch: b1)
FactoryElement.create(name: 'Methocarbamol', state: 0, branch: b2)
FactoryElement.create(name: 'RespiratoryCare', state: 1, branch: b3)

User.destroy_all
User.create(
  email: 'user@titan.com',
  password: 'password'
)

User.create(
  email: 'user@aluminium.com',
  password: 'password'
)
