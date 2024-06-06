class JeuxVideosAmvsController < ApplicationController
  before_action :set__jeux_videos_amv, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_amvs or /_jeux_videos_amvs.json
  def index
    @_jeux_videos_amvs = JeuxVideosAmv.all
  end

  # GET /_jeux_videos_amvs/1 or /_jeux_videos_amvs/1.json
  def show
  end

  # GET /_jeux_videos_amvs/new
  def new
    @_jeux_videos_amv = JeuxVideosAmv.new
  end

  # GET /_jeux_videos_amvs/1/edit
  def edit
  end

  # POST /_jeux_videos_amvs or /_jeux_videos_amvs.json
  def create
    @_jeux_videos_amv = JeuxVideosAmv.new(_jeux_videos_amv_params)

    respond_to do |format|
      if @_jeux_videos_amv.save
        format.html { redirect_to jeux_videos_amv_url(@_jeux_videos_amv), notice: "Jeux videos amv was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_amv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_amvs/1 or /_jeux_videos_amvs/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_amv.update(_jeux_videos_amv_params)
        format.html { redirect_to jeux_videos_amv_url(@_jeux_videos_amv), notice: "Jeux videos amv was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_amv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_amv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_amvs/1 or /_jeux_videos_amvs/1.json
  def destroy
    @_jeux_videos_amv.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_amvs_url, notice: "Jeux videos amv was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_amv
      @_jeux_videos_amv = JeuxVideosAmv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_amv_params
      params.require(:jeux_videos_amv).permit(:name)
    end
end
