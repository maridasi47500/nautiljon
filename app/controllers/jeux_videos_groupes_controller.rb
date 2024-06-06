class JeuxVideosGroupesController < ApplicationController
  before_action :set__jeux_videos_groupe, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_groupes or /_jeux_videos_groupes.json
  def index
    @_jeux_videos_groupes = JeuxVideosGroupe.all
  end

  # GET /_jeux_videos_groupes/1 or /_jeux_videos_groupes/1.json
  def show
  end

  # GET /_jeux_videos_groupes/new
  def new
    @_jeux_videos_groupe = JeuxVideosGroupe.new
  end

  # GET /_jeux_videos_groupes/1/edit
  def edit
  end

  # POST /_jeux_videos_groupes or /_jeux_videos_groupes.json
  def create
    @_jeux_videos_groupe = JeuxVideosGroupe.new(_jeux_videos_groupe_params)

    respond_to do |format|
      if @_jeux_videos_groupe.save
        format.html { redirect_to jeux_videos_groupe_url(@_jeux_videos_groupe), notice: "Jeux videos groupe was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_groupe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_groupes/1 or /_jeux_videos_groupes/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_groupe.update(_jeux_videos_groupe_params)
        format.html { redirect_to jeux_videos_groupe_url(@_jeux_videos_groupe), notice: "Jeux videos groupe was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_groupe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_groupes/1 or /_jeux_videos_groupes/1.json
  def destroy
    @_jeux_videos_groupe.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_groupes_url, notice: "Jeux videos groupe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_groupe
      @_jeux_videos_groupe = JeuxVideosGroupe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_groupe_params
      params.require(:jeux_videos_groupe).permit(:name)
    end
end
