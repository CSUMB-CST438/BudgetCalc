class Budget < ApplicationRecord

	def home
		self.house / self.income
	end
	def electric
		self.elec / self.income
	end
	def creditc
		self.credit / self.income
	end
	def gasoline
		self.gas / self.income
	end
	def truck
		self.car / self.income
	end
	def insurance
		self.insur / self.income
	end
	def watering
		self.water / self.income
	end
	def spending
		self.money / self.income
	end
end
