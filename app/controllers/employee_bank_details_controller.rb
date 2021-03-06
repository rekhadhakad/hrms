class EmployeeBankDetailsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_employee_bank_detail, only: [:show, :edit, :update, :destroy]

  # GET /employee_bank_details
  # GET /employee_bank_details.json
  def index
    @employee_bank_details = EmployeeBankDetail.all
  end

  # GET /employee_bank_details/1
  # GET /employee_bank_details/1.json
  def show
  end

  # GET /employee_bank_details/new
  def new
    @employee_bank_detail = EmployeeBankDetail.new
    if params[:format]
      @employee = Employee.where("id = ?", params[:format]).first
    end
  end

  # GET /employee_bank_details/1/edit
  def edit
  end

  # POST /employee_bank_details
  # POST /employee_bank_details.json
  def create
    @employee_bank_detail = EmployeeBankDetail.new(employee_bank_detail_params)

    respond_to do |format|
      if @employee_bank_detail.save
        format.html { redirect_to @employee_bank_detail, notice: 'Employee bank detail was successfully created.' }
        format.json { render :show, status: :created, location: @employee_bank_detail }
      else
        format.html { render :new }
        format.json { render json: @employee_bank_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_bank_details/1
  # PATCH/PUT /employee_bank_details/1.json
  def update
    respond_to do |format|
      if @employee_bank_detail.update(employee_bank_detail_params)
        format.html { redirect_to @employee_bank_detail, notice: 'Employee bank detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_bank_detail }
      else
        format.html { render :edit }
        format.json { render json: @employee_bank_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_bank_details/1
  # DELETE /employee_bank_details/1.json
  def destroy
    @employee_bank_detail.destroy
    respond_to do |format|
      format.html { redirect_to employee_bank_details_url, notice: 'Employee bank detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_bank_detail
      @employee_bank_detail = EmployeeBankDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_bank_detail_params
      params.require(:employee_bank_detail).permit(:employee_id, :pan_no, :national_id_no, :bank_acc_no, :ifsc_code, :bank_name, :branch_address)
    end
end
