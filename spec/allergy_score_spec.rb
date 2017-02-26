require('rspec')
require('allergy_score')

describe('String#allergy_score') do
	it('returns the allergen EGG for the score 1') do
		expect('1'.allergy_score()).to(eq(['egg']))
	end

	it('returns the allergens EGG and PEANUTS for the user score 3') do
		expect('3'.allergy_score()).to(eq(['peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS and SHELLFISH for the user score 7') do
		expect('7'.allergy_score()).to(eq(['shellfish', 'peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS, SHELLFISH and STRAWBERRIES for the user score 15') do
		expect('15'.allergy_score()).to(eq(['strawberries', 'shellfish', 'peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS, SHELLFISH, STRAWBERRIES and TOMATOES for the user score 31') do
		expect('31'.allergy_score()).to(eq(['tomatoes', 'strawberries', 'shellfish', 'peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS, SHELLFISH, STRAWBERRIES, TOMATOES and CHOCOLATE for the user score 63') do
		expect('63'.allergy_score()).to(eq(['chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS, SHELLFISH, STRAWBERRIES, TOMATOES, CHOCOLATE and POLLEN for the user score 127') do
		expect('127'.allergy_score()).to(eq(['pollen', 'chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'egg']))
	end

	it('returns the allergens EGG, PEANUTS, SHELLFISH, STRAWBERRIES, TOMATOES, CHOCOLATE, POLLEN and CATS for the user score 255') do
		expect('255'.allergy_score()).to(eq(['cats', 'pollen', 'chocolate', 'tomatoes', 'strawberries', 'shellfish', 'peanuts', 'egg']))
	end

	it('returns ERROR for a user score higher than 255') do
		expect('256'.allergy_score()).to(eq(['error']))
	end

	it('returns the allergens EGG, SHELLFISH, TOMATOES and POLLEN for the user score 85') do
		expect('85'.allergy_score()).to(eq(['pollen', 'tomatoes', 'shellfish', 'egg']))
	end
end