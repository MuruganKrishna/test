class SalariesController < ApplicationController
  before_action :set_salary, only: [:show, :edit, :update, :destroy]

  # GET /salaries
  # GET /salaries.json
  def index
    @salaries = Salary.all
  end

  # GET /salaries/1
  # GET /salaries/1.json
  def show
    @actual_salary=@salary.current_salary
    @s1=@salary.actual_salary
    @emp_id=@salary.employee_id
    @leave=Attendance.where(employee_id: @emp_id)
    @totalLeave=@leave.sum(:leave)
    # binding.pry
    @reduction_per_day=@s1/30
    @reduction_per_month=@reduction_per_day*@totalLeave
    @realsalary=@s1-@reduction_per_month
    @reimburse=Reimbursement.where(employee_id: @emp_id)
    #####
    @totalpayout=@reimburse.sum(:cost)+@realsalary
    #####
    @max=Salary.maximum(:actual_salary)
    #####
    @assertt=Assert.sum(:equipment_price)
    @paymentt=Payment.sum(:cost)
    @empcount=Employee.count(:name)
    @percost=(@assertt+@paymentt)/@empcount
    #####
    @sumsalary=Salary.sum(:actual_salary)
    @cmpavarage=@sumsalary/@empcount
    #####
    @fempid=Salary.find_by(actual_salary: @max)
    @temp=@fempid.employee_id
    @empid=Employee.find_by(id: @temp)


  end


  # GET /salaries/new
  def new
    @salary = Salary.new
  end

  # GET /salaries/1/edit
  def edit
  end

  # POST /salaries
  # POST /salaries.json
  def create
    @salary = Salary.new(salary_params)
   
    respond_to do |format|
      if @salary.save
        @emp_id=@salary.employee_id
        @leave=Attendance.find(@emp_id)
        format.html { redirect_to @salary, notice: 'Salary was successfully created.' }
        format.json { render :show, status: :created, location: @salary }
      else
        format.html { render :new }
        format.json { render json: @salary.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /salaries/1
  # PATCH/PUT /salaries/1.json
  def update
    respond_to do |format|
      if @salary.update(salary_params)
        format.html { redirect_to @salary, notice: 'Salary was successfully updated.' }
        format.json { render :show, status: :ok, location: @salary }
      else
        format.html { render :edit }
        format.json { render json: @salary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salaries/1
  # DELETE /salaries/1.json
  def destroy
    @salary.destroy
    respond_to do |format|
      format.html { redirect_to salaries_url, notice: 'Salary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salary
      @salary = Salary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salary_params
      params.require(:salary).permit(:actual_salary, :current_salary, :employee_id)
    end
end
