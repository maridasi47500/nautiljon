class VideosController < ApplicationController
  before_action :set__video, only: %i[ show edit update destroy ]

  # GET /_videos or /_videos.json
  def index
    @_videos = Video.all
  end

  # GET /_videos/1 or /_videos/1.json
  def show
  end

  # GET /_videos/new
  def new
    @_video = Video.new
  end

  # GET /_videos/1/edit
  def edit
  end

  # POST /_videos or /_videos.json
  def create
    @_video = Video.new(_video_params)

    respond_to do |format|
      if @_video.save
        format.html { redirect_to video_url(@_video), notice: "Video was successfully created." }
        format.json { render :show, status: :created, location: @_video }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_videos/1 or /_videos/1.json
  def update
    respond_to do |format|
      if @_video.update(_video_params)
        format.html { redirect_to video_url(@_video), notice: "Video was successfully updated." }
        format.json { render :show, status: :ok, location: @_video }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_videos/1 or /_videos/1.json
  def destroy
    @_video.destroy!

    respond_to do |format|
      format.html { redirect_to videos_url, notice: "Video was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__video
      @_video = Video.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _video_params
      params.require(:video).permit(:titre, :_videos_id_cat_id, :url, :tags)
    end
end
