class SupportStaffsController < ApplicationController
  before_action :set_support_staff, only: %i[ show edit update destroy ]

  # GET /support_staffs or /support_staffs.json
  def index
    @support_staffs = SupportStaff.all
  end

  # GET /support_staffs/1 or /support_staffs/1.json
  def show
  end

  # GET /support_staffs/new
  def new
    @support_staff = SupportStaff.new
  end

  # GET /support_staffs/1/edit
  def edit
  end

  # POST /support_staffs or /support_staffs.json
  def create
    @support_staff = SupportStaff.new(support_staff_params)

    respond_to do |format|
      if @support_staff.save
        format.html { redirect_to support_staff_url(@support_staff), notice: "Support staff was successfully created." }
        format.json { render :show, status: :created, location: @support_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @support_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_staffs/1 or /support_staffs/1.json
  def update
    respond_to do |format|
      if @support_staff.update(support_staff_params)
        format.html { redirect_to support_staff_url(@support_staff), notice: "Support staff was successfully updated." }
        format.json { render :show, status: :ok, location: @support_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @support_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_staffs/1 or /support_staffs/1.json
  def destroy
    @support_staff.destroy

    respond_to do |format|
      format.html { redirect_to support_staffs_url, notice: "Support staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_staff
      @support_staff = SupportStaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def support_staff_params
      params.require(:support_staff).permit(:user_id)
    end
end
