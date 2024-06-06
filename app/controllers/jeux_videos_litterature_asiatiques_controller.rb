class JeuxVideosLitteratureAsiatiquesController < ApplicationController
  before_action :set__jeux_videos_litterature_asiatique, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_litterature_asiatiques or /_jeux_videos_litterature_asiatiques.json
  def index
    @_jeux_videos_litterature_asiatiques = JeuxVideosLitteratureAsiatique.all
  end

  # GET /_jeux_videos_litterature_asiatiques/1 or /_jeux_videos_litterature_asiatiques/1.json
  def show
  end

  # GET /_jeux_videos_litterature_asiatiques/new
  def new
    @_jeux_videos_litterature_asiatique = JeuxVideosLitteratureAsiatique.new
  end

  # GET /_jeux_videos_litterature_asiatiques/1/edit
  def edit
  end

  # POST /_jeux_videos_litterature_asiatiques or /_jeux_videos_litterature_asiatiques.json
  def create
    @_jeux_videos_litterature_asiatique = JeuxVideosLitteratureAsiatique.new(_jeux_videos_litterature_asiatique_params)

    respond_to do |format|
      if @_jeux_videos_litterature_asiatique.save
        format.html { redirect_to jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique), notice: "Jeux videos litterature asiatique was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_litterature_asiatique }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_litterature_asiatiques/1 or /_jeux_videos_litterature_asiatiques/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_litterature_asiatique.update(_jeux_videos_litterature_asiatique_params)
        format.html { redirect_to jeux_videos_litterature_asiatique_url(@_jeux_videos_litterature_asiatique), notice: "Jeux videos litterature asiatique was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_litterature_asiatique }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_litterature_asiatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_litterature_asiatiques/1 or /_jeux_videos_litterature_asiatiques/1.json
  def destroy
    @_jeux_videos_litterature_asiatique.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_litterature_asiatiques_url, notice: "Jeux videos litterature asiatique was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_litterature_asiatique
      @_jeux_videos_litterature_asiatique = JeuxVideosLitteratureAsiatique.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_litterature_asiatique_params
      params.require(:jeux_videos_litterature_asiatique).permit(:name)
    end
end
