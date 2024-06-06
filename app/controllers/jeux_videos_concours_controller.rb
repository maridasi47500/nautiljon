class JeuxVideosConcoursController < ApplicationController
  before_action :set__jeux_videos_concour, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_concours or /_jeux_videos_concours.json
  def index
    @_jeux_videos_concours = JeuxVideosConcour.all
  end

  # GET /_jeux_videos_concours/1 or /_jeux_videos_concours/1.json
  def show
  end

  # GET /_jeux_videos_concours/new
  def new
    @_jeux_videos_concour = JeuxVideosConcour.new
  end

  # GET /_jeux_videos_concours/1/edit
  def edit
  end

  # POST /_jeux_videos_concours or /_jeux_videos_concours.json
  def create
    @_jeux_videos_concour = JeuxVideosConcour.new(_jeux_videos_concour_params)

    respond_to do |format|
      if @_jeux_videos_concour.save
        format.html { redirect_to _jeux_videos_concour_url(@_jeux_videos_concour), notice: "Jeux videos concour was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_concour }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_concours/1 or /_jeux_videos_concours/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_concour.update(_jeux_videos_concour_params)
        format.html { redirect_to _jeux_videos_concour_url(@_jeux_videos_concour), notice: "Jeux videos concour was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_concour }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_concour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_concours/1 or /_jeux_videos_concours/1.json
  def destroy
    @_jeux_videos_concour.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_concours_url, notice: "Jeux videos concour was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_concour
      @_jeux_videos_concour = JeuxVideosConcour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_concour_params
      params.require(:_jeux_videos_concour).permit(:name)
    end
end
