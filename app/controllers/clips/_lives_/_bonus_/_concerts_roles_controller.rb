class Clips::Lives::Bonus::ConcertsRolesController < ApplicationController
  before_action :set_clips_lives_bonus_concerts_role, only: %i[ show edit update destroy ]

  # GET /_clips_/_lives_/_bonus_/_concerts_roles or /_clips_/_lives_/_bonus_/_concerts_roles.json
  def index
    @_clips_lives_bonus_concerts_roles = Clips::Lives::Bonus::ConcertsRole.all
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def show
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/new
  def new
    @_clips_lives_bonus_concerts_role = Clips::Lives::Bonus::ConcertsRole.new
  end

  # GET /_clips_/_lives_/_bonus_/_concerts_roles/1/edit
  def edit
  end

  # POST /_clips_/_lives_/_bonus_/_concerts_roles or /_clips_/_lives_/_bonus_/_concerts_roles.json
  def create
    @_clips_lives_bonus_concerts_role = Clips::Lives::Bonus::ConcertsRole.new(_clips_lives_bonus_concerts_role_params)

    respond_to do |format|
      if @_clips_lives_bonus_concerts_role.save
        format.html { redirect_to _clips_lives_bonus_concerts_role_url(@_clips_lives_bonus_concerts_role), notice: "Concerts role was successfully created." }
        format.json { render :show, status: :created, location: @_clips_lives_bonus_concerts_role }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concerts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def update
    respond_to do |format|
      if @_clips_lives_bonus_concerts_role.update(_clips_lives_bonus_concerts_role_params)
        format.html { redirect_to _clips_lives_bonus_concerts_role_url(@_clips_lives_bonus_concerts_role), notice: "Concerts role was successfully updated." }
        format.json { render :show, status: :ok, location: @_clips_lives_bonus_concerts_role }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_clips_lives_bonus_concerts_role.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_clips_/_lives_/_bonus_/_concerts_roles/1 or /_clips_/_lives_/_bonus_/_concerts_roles/1.json
  def destroy
    @_clips_lives_bonus_concerts_role.destroy!

    respond_to do |format|
      format.html { redirect_to _clips_lives_bonus_concerts_roles_url, notice: "Concerts role was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clips_lives_bonus_concerts_role
      @_clips_lives_bonus_concerts_role = Clips::Lives::Bonus::ConcertsRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _clips_lives_bonus_concerts_role_params
      params.require(:_clips_lives_bonus_concerts_role).permit(:name)
    end
end
