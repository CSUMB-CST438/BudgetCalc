#MVC Design Pattern Controller

class BudgetsController < ApplicationController
  before_action :set_budget, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :index]

  # GET /budgets
  # GET /budgets.json
  def index
    if current_user
      @budgets = current_user.budgets
    end
  end

  # GET /budgets/1
  # GET /budgets/1.json
  def show
  end

  # GET /budgets/new
  def new
    @budget = Budget.new
  end

  # GET /budgets/1/edit
  def edit
  end

  # POST /budgets
  # POST /budgets.json
  def create
    @budget = Budget.new(budget_params)
    @budget.user_id = current_user.id
    respond_to do |format|
      if @budget.save 
        # income less than expenses
        if @budget.rem < 0
        format.html { redirect_to budgets_url, notice: 'Budget was successfully created, but income is less than expenses.' }
        format.json { render :show, status: :created, location: @budget}
        #income below expense(Normal)
        else @budget.save
        format.html { redirect_to @budget, notice: 'Budget was successfully created.' }
        format.json { render :show, status: :created, location: @budget }
        end
      else
        format.html { render :new }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /budgets/1
  # PATCH/PUT /budgets/1.json
  def update
    respond_to do |format|
      if @budget.update(budget_params) # income less than expenses
        if @budget.rem < 0
        format.html { redirect_to budgets_url, notice: 'Budget was successfully updated, but income is less than expenses.' }
        format.json { render :show, status: :created, location: @budget}
        else
        format.html { redirect_to @budget, notice: 'Budget was successfully updated.' }
        format.json { render :show, status: :ok, location: @budget }
        end
      else
        format.html { render :edit }
        format.json { render json: @budget.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget.destroy
    respond_to do |format|
      format.html { redirect_to budgets_url, notice: 'Budget was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_budget
      @budget = Budget.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def budget_params
      params.require(:budget).permit(:income, :house, :elec, :credit, :gas, :car, :insur, :water, :money)
    end
end
