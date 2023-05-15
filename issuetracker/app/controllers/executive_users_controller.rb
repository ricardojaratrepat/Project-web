class ExecutiveUsersController < ApplicationController
  before_action :set_executive_user, only: %i[ show edit update destroy ]

  # GET /executive_users or /executive_users.json
  def index
    @executive_users = ExecutiveUser.all
  end

  # GET /executive_users/1 or /executive_users/1.json
  def show
  end

  # GET /executive_users/new
  def new
    @executive_user = ExecutiveUser.new
  end

  # GET /executive_users/1/edit
  def edit
  end

  # POST /executive_users or /executive_users.json
  def create
    @executive_user = ExecutiveUser.new(executive_user_params)

    respond_to do |format|
      if @executive_user.save
        format.html { redirect_to executive_user_url(@executive_user), notice: "Executive user was successfully created." }
        format.json { render :show, status: :created, location: @executive_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @executive_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /executive_users/1 or /executive_users/1.json
  def update
    respond_to do |format|
      if @executive_user.update(executive_user_params)
        format.html { redirect_to executive_user_url(@executive_user), notice: "Executive user was successfully updated." }
        format.json { render :show, status: :ok, location: @executive_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @executive_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /executive_users/1 or /executive_users/1.json
  def destroy
    @executive_user.destroy

    respond_to do |format|
      format.html { redirect_to executive_users_url, notice: "Executive user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_executive_user
      @executive_user = ExecutiveUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def executive_user_params
      params.require(:executive_user).permit(:user_id)
    end
end
