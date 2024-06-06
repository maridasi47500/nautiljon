class JeuxVideosAmsController < ApplicationController
  before_action :set__jeux_videos_am, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_ams or /_jeux_videos_ams.json
  def index
    @_jeux_videos_ams = JeuxVideosAm.all
  end

  # GET /_jeux_videos_ams/1 or /_jeux_videos_ams/1.json
  def show
  end

  # GET /_jeux_videos_ams/new
  def new
    @_jeux_videos_am = JeuxVideosAm.new
  end

  # GET /_jeux_videos_ams/1/edit
  def edit
  end

  # POST /_jeux_videos_ams or /_jeux_videos_ams.json
  def create
    @_jeux_videos_am = JeuxVideosAm.new(_jeux_videos_am_params)

    respond_to do |format|
      if @_jeux_videos_am.save
        format.html { redirect_to jeux_videos_am_url(@_jeux_videos_am), notice: "Jeux videos am was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_am }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_ams/1 or /_jeux_videos_ams/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_am.update(_jeux_videos_am_params)
        format.html { redirect_to jeux_videos_am_url(@_jeux_videos_am), notice: "Jeux videos am was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_am }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_am.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_ams/1 or /_jeux_videos_ams/1.json
  def destroy
    @_jeux_videos_am.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_ams_url, notice: "Jeux videos am was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_am
      @_jeux_videos_am = JeuxVideosAm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_am_params
      params.require(:jeux_videos_am).permit(:name)
    end
end
