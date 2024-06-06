class JeuxVideosOstsController < ApplicationController
  before_action :set__jeux_videos_ost, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_osts or /_jeux_videos_osts.json
  def index
    @_jeux_videos_osts = JeuxVideosOst.all
  end

  # GET /_jeux_videos_osts/1 or /_jeux_videos_osts/1.json
  def show
  end

  # GET /_jeux_videos_osts/new
  def new
    @_jeux_videos_ost = JeuxVideosOst.new
  end

  # GET /_jeux_videos_osts/1/edit
  def edit
  end

  # POST /_jeux_videos_osts or /_jeux_videos_osts.json
  def create
    @_jeux_videos_ost = JeuxVideosOst.new(_jeux_videos_ost_params)

    respond_to do |format|
      if @_jeux_videos_ost.save
        format.html { redirect_to _jeux_videos_ost_url(@_jeux_videos_ost), notice: "Jeux videos ost was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_ost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_osts/1 or /_jeux_videos_osts/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_ost.update(_jeux_videos_ost_params)
        format.html { redirect_to _jeux_videos_ost_url(@_jeux_videos_ost), notice: "Jeux videos ost was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_ost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_ost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_osts/1 or /_jeux_videos_osts/1.json
  def destroy
    @_jeux_videos_ost.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_osts_url, notice: "Jeux videos ost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_ost
      @_jeux_videos_ost = JeuxVideosOst.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_ost_params
      params.require(:_jeux_videos_ost).permit(:name)
    end
end
