class JeuxVideosCulturesController < ApplicationController
  before_action :set__jeux_videos_culture, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_cultures or /_jeux_videos_cultures.json
  def index
    @_jeux_videos_cultures = JeuxVideosCulture.all
  end

  # GET /_jeux_videos_cultures/1 or /_jeux_videos_cultures/1.json
  def show
  end

  # GET /_jeux_videos_cultures/new
  def new
    @_jeux_videos_culture = JeuxVideosCulture.new
  end

  # GET /_jeux_videos_cultures/1/edit
  def edit
  end

  # POST /_jeux_videos_cultures or /_jeux_videos_cultures.json
  def create
    @_jeux_videos_culture = JeuxVideosCulture.new(_jeux_videos_culture_params)

    respond_to do |format|
      if @_jeux_videos_culture.save
        format.html { redirect_to jeux_videos_culture_url(@_jeux_videos_culture), notice: "Jeux videos culture was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_culture }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_cultures/1 or /_jeux_videos_cultures/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_culture.update(_jeux_videos_culture_params)
        format.html { redirect_to jeux_videos_culture_url(@_jeux_videos_culture), notice: "Jeux videos culture was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_culture }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_culture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_cultures/1 or /_jeux_videos_cultures/1.json
  def destroy
    @_jeux_videos_culture.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_cultures_url, notice: "Jeux videos culture was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_culture
      @_jeux_videos_culture = JeuxVideosCulture.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_culture_params
      params.require(:jeux_videos_culture).permit(:name)
    end
end
