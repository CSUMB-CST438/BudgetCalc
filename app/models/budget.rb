#Model for Budget.

class Budget < ApplicationRecord

	#MVC Design pattern for model

	#percentage for budget. 

	def home
		self.house / self.income * 100
	end

	def electric
		self.elec / self.income * 100
	end

	def creditc
		self.credit / self.income * 100
	end

	def gasoline
		self.gas / self.income * 100
	end

	def truck
		self.car / self.income * 100
	end

	def insurance
		self.insur / self.income* 100 
	end

	def watering
		self.water / self.income * 100
	end

	def spending
		self.money / self.income  * 100
	end

	#Cash remaining 
	def leftovers
		(self.income - self.elec - self.home - self.credit - self.gas - self.truck - self.insur - self.water - self.money) / self.income * 100
	end

	#for pie chart
	def budget_graph
		{"Home": self.home, "Electric": self.electric, "Credit Card": self.creditc, "Gas": self.gasoline, "Truck": self.truck,
			"Insurance": self.insurance, "Water": self.watering, "Spending": self.spending, "Remaining": self.leftovers}
	end
end
