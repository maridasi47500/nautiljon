class JeuxVideosJvsController < ApplicationController
  before_action :set__jeux_videos_jv, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_jvs or /_jeux_videos_jvs.json
  def index
    @_jeux_videos_jvs = JeuxVideosJv.all
  end

  # GET /_jeux_videos_jvs/1 or /_jeux_videos_jvs/1.json
  def show
  end

  # GET /_jeux_videos_jvs/new
  def new
    @_jeux_videos_jv = JeuxVideosJv.new
  end

  # GET /_jeux_videos_jvs/1/edit
  def edit
  end

  # POST /_jeux_videos_jvs or /_jeux_videos_jvs.json
  def create
    @_jeux_videos_jv = JeuxVideosJv.new(_jeux_videos_jv_params)

    respond_to do |format|
      if @_jeux_videos_jv.save
        format.html { redirect_to _jeux_videos_jv_url(@_jeux_videos_jv), notice: "Jeux videos jv was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_jv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_jvs/1 or /_jeux_videos_jvs/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_jv.update(_jeux_videos_jv_params)
        format.html { redirect_to _jeux_videos_jv_url(@_jeux_videos_jv), notice: "Jeux videos jv was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_jv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_jv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_jvs/1 or /_jeux_videos_jvs/1.json
  def destroy
    @_jeux_videos_jv.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_jvs_url, notice: "Jeux videos jv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_jv
      @_jeux_videos_jv = JeuxVideosJv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_jv_params
      params.require(:_jeux_videos_jv).permit(:name)
    end
end
