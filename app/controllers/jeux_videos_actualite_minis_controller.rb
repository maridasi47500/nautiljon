class JeuxVideosActualiteMinisController < ApplicationController
  before_action :set__jeux_videos_actualite_mini, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_actualite_minis or /_jeux_videos_actualite_minis.json
  def index
    @_jeux_videos_actualite_minis = JeuxVideosActualiteMini.all
  end

  # GET /_jeux_videos_actualite_minis/1 or /_jeux_videos_actualite_minis/1.json
  def show
  end

  # GET /_jeux_videos_actualite_minis/new
  def new
    @_jeux_videos_actualite_mini = JeuxVideosActualiteMini.new
  end

  # GET /_jeux_videos_actualite_minis/1/edit
  def edit
  end

  # POST /_jeux_videos_actualite_minis or /_jeux_videos_actualite_minis.json
  def create
    @_jeux_videos_actualite_mini = JeuxVideosActualiteMini.new(_jeux_videos_actualite_mini_params)

    respond_to do |format|
      if @_jeux_videos_actualite_mini.save
        format.html { redirect_to jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini), notice: "Jeux videos actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_actualite_minis/1 or /_jeux_videos_actualite_minis/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_actualite_mini.update(_jeux_videos_actualite_mini_params)
        format.html { redirect_to jeux_videos_actualite_mini_url(@_jeux_videos_actualite_mini), notice: "Jeux videos actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_actualite_minis/1 or /_jeux_videos_actualite_minis/1.json
  def destroy
    @_jeux_videos_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_actualite_minis_url, notice: "Jeux videos actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_actualite_mini
      @_jeux_videos_actualite_mini = JeuxVideosActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_actualite_mini_params
      params.require(:jeux_videos_actualite_mini).permit(:name)
    end
end
