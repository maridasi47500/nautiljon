class JeuxVideosStaffSocietesController < ApplicationController
  before_action :set__jeux_videos_staff_societe, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_staff_societes or /_jeux_videos_staff_societes.json
  def index
    @_jeux_videos_staff_societes = JeuxVideosStaffSociete.all
  end

  # GET /_jeux_videos_staff_societes/1 or /_jeux_videos_staff_societes/1.json
  def show
  end

  # GET /_jeux_videos_staff_societes/new
  def new
    @_jeux_videos_staff_societe = JeuxVideosStaffSociete.new
  end

  # GET /_jeux_videos_staff_societes/1/edit
  def edit
  end

  # POST /_jeux_videos_staff_societes or /_jeux_videos_staff_societes.json
  def create
    @_jeux_videos_staff_societe = JeuxVideosStaffSociete.new(_jeux_videos_staff_societe_params)

    respond_to do |format|
      if @_jeux_videos_staff_societe.save
        format.html { redirect_to _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe), notice: "Jeux videos staff societe was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_staff_societe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_societe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_staff_societes/1 or /_jeux_videos_staff_societes/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_staff_societe.update(_jeux_videos_staff_societe_params)
        format.html { redirect_to _jeux_videos_staff_societe_url(@_jeux_videos_staff_societe), notice: "Jeux videos staff societe was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_staff_societe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_staff_societe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_staff_societes/1 or /_jeux_videos_staff_societes/1.json
  def destroy
    @_jeux_videos_staff_societe.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_staff_societes_url, notice: "Jeux videos staff societe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_staff_societe
      @_jeux_videos_staff_societe = JeuxVideosStaffSociete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_staff_societe_params
      params.require(:_jeux_videos_staff_societe).permit(:name)
    end
end
