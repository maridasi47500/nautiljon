class AnimesStaffRolesController < ApplicationController
  before_action :set_animes_staff_role, only: %i[ show edit update destroy ]

  # GET /animes_staff_roles or /animes_staff_roles.json
  def index
    @animes_staff_roles = AnimesStaffRole.all
  end

  # GET /animes_staff_roles/1 or /animes_staff_roles/1.json
  def show
  end

  # GET /animes_staff_roles/new
  def new
    @animes_staff_role = AnimesStaffRole.new
  end

  # GET /animes_staff_roles/1/edit
  def edit
  end

  # POST /animes_staff_roles or /animes_staff_roles.json
  def create
    @animes_staff_role = AnimesStaffRole.new(animes_staff_role_params)

    respond_to do |format|
      if @animes_staff_role.save
        format.html { redirect_to animes_staff_role_url(@animes_staff_role), notice: "Animes staff role was successfully created." }
        format.json { render :show, status: :created, location: @animes_staff_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_staff_roles/1 or /animes_staff_roles/1.json
  def update
    respond_to do |format|
      if @animes_staff_role.update(animes_staff_role_params)
        format.html { redirect_to animes_staff_role_url(@animes_staff_role), notice: "Animes staff role was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_staff_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_staff_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_staff_roles/1 or /animes_staff_roles/1.json
  def destroy
    @animes_staff_role.destroy!

    respond_to do |format|
      format.html { redirect_to animes_staff_roles_url, notice: "Animes staff role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_staff_role
      @animes_staff_role = AnimesStaffRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_staff_role_params
      params.require(:animes_staff_role).permit(:name)
    end
end
