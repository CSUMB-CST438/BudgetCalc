# Service Object/Class Design Pattern

class ChartService

  # initializes the Service class
  def initialize(budget)
    @budget = budget
  end
  
  # invokes private method chart_params to get the data in the expected format
  def get_chart_data
    chart_params
  end

  private

  # private method which returns chart data
  def chart_params
		{"Home": @budget.home, "Electric": @budget.electric, "Credit Card": @budget.creditc, "Gas": @budget.gasoline, "Truck": @budget.truck,
			"Insurance": @budget.insurance, "Water": @budget.watering, "Spending": @budget.spending, "Remaining": @budget.leftovers}
  end
end