class SupervisorUsersController < ApplicationController
  before_action :set_supervisor_user, only: %i[ show edit update destroy ]

  # GET /supervisor_users or /supervisor_users.json
  def index
    @supervisor_users = SupervisorUser.all
  end

  # GET /supervisor_users/1 or /supervisor_users/1.json
  def show
  end

  # GET /supervisor_users/new
  def new
    @supervisor_user = SupervisorUser.new
  end

  # GET /supervisor_users/1/edit
  def edit
  end

  # POST /supervisor_users or /supervisor_users.json
  def create
    @supervisor_user = SupervisorUser.new(supervisor_user_params)

    respond_to do |format|
      if @supervisor_user.save
        format.html { redirect_to supervisor_user_url(@supervisor_user), notice: "Supervisor user was successfully created." }
        format.json { render :show, status: :created, location: @supervisor_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @supervisor_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supervisor_users/1 or /supervisor_users/1.json
  def update
    respond_to do |format|
      if @supervisor_user.update(supervisor_user_params)
        format.html { redirect_to supervisor_user_url(@supervisor_user), notice: "Supervisor user was successfully updated." }
        format.json { render :show, status: :ok, location: @supervisor_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @supervisor_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supervisor_users/1 or /supervisor_users/1.json
  def destroy
    @supervisor_user.destroy

    respond_to do |format|
      format.html { redirect_to supervisor_users_url, notice: "Supervisor user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supervisor_user
      @supervisor_user = SupervisorUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supervisor_user_params
      params.require(:supervisor_user).permit(:user_id)
    end
end
