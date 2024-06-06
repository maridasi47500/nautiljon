class JeuxVideosEtatsController < ApplicationController
  before_action :set__jeux_videos_etat, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_etats or /_jeux_videos_etats.json
  def index
    @_jeux_videos_etats = JeuxVideosEtat.all
  end

  # GET /_jeux_videos_etats/1 or /_jeux_videos_etats/1.json
  def show
  end

  # GET /_jeux_videos_etats/new
  def new
    @_jeux_videos_etat = JeuxVideosEtat.new
  end

  # GET /_jeux_videos_etats/1/edit
  def edit
  end

  # POST /_jeux_videos_etats or /_jeux_videos_etats.json
  def create
    @_jeux_videos_etat = JeuxVideosEtat.new(_jeux_videos_etat_params)

    respond_to do |format|
      if @_jeux_videos_etat.save
        format.html { redirect_to jeux_videos_etat_url(@_jeux_videos_etat), notice: "Jeux videos etat was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_etat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_etat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_etats/1 or /_jeux_videos_etats/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_etat.update(_jeux_videos_etat_params)
        format.html { redirect_to jeux_videos_etat_url(@_jeux_videos_etat), notice: "Jeux videos etat was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_etat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_etat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_etats/1 or /_jeux_videos_etats/1.json
  def destroy
    @_jeux_videos_etat.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_etats_url, notice: "Jeux videos etat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_etat
      @_jeux_videos_etat = JeuxVideosEtat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_etat_params
      params.require(:jeux_videos_etat).permit(:name)
    end
end
