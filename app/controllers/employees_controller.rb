class EmployeesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :load_wizard, only: [:new, :edit, :create, :update]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
    if params[:search]
      @employees = Employee.search(params[:search])
    else
      @employees = Employee.all
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = @wizard.object
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = @wizard.object
    if @wizard.save
      redirect_to @employee, notice: "Product saved!"
    else
      render :new
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    if @wizard.save
      redirect_to @employee, notice: 'Employee was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def search
  #   byebug  
  #   @employee = Employee.search(params[:name]) if params[:name]
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:employee_no, :first_name, :middle_name, :last_name, :date_of_birth, 
        :marital_status, :father_name, :mother_name, :department, :technology, :joining_date, :address, 
        :current_address, :home_phone, :mobile_no, :alternet_mobile_no, :email, :father_contact_no, :pan_no,
        :national_id_no, :bank_acc_no, :ifsc_code, :bank_name, :branch_address, :exam_passed, :board_or_university, :institut_name, :specialization, :marks)
    end

    def load_wizard
      @wizard = ModelWizard.new(@employee || Employee, session, params)
      if self.action_name.in? %w[new edit]
        @wizard.start
      elsif self.action_name.in? %w[create update]
        @wizard.process
      end
    end
end
