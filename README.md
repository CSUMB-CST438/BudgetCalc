BudgetCalc is a personal monthly budget tracker using ruby on rails. 

Design Pattern: 

	MVC:

	Model location: 		BudgetCalc/models
	View location:			BudgetCalc/views/budgets
	Controller location:	BudgetCalc/app/conrillers

	Service Pattern(EVAN):

	budgets_controller
	budget.rb
	app/services/chart_service
	views/budgets/show.html.erb



Instuctions For EC2 instance:

	* SSH into correct instance with where pemKey is located. 

	Uplodaing to aws server (ubuntu):
	1. 	You will need to kill the server using this line 	 in the BudgetCalc Directory:

		$ sudo kill $(cat tmp/pids/server.pid)

	2.	Move the contents from BudgetCalc to another 		directory (i.e. BudgetCalc#)

		$ mv BudgetCalc/ BudgetCalc#(whatever number is next)

	3.	Navigate to the directory where you want to 		clone the project and clone from github. 

	4.	CD into the newly cloned directory BudgetCalc 		and migrate the database.

		$ rails db:migrate

	5. Then inside of BudgetCalc run the rails server in 	the background so you can exit safely and leave 	it running.

		$ sudo rails s -p 80 -b ec2-52-53-164-230.us-west-1.compute.amazonaws.com -d








