class JeuxVideosCdsController < ApplicationController
  before_action :set__jeux_videos_cd, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_cds or /_jeux_videos_cds.json
  def index
    @_jeux_videos_cds = JeuxVideosCd.all
  end

  # GET /_jeux_videos_cds/1 or /_jeux_videos_cds/1.json
  def show
  end

  # GET /_jeux_videos_cds/new
  def new
    @_jeux_videos_cd = JeuxVideosCd.new
  end

  # GET /_jeux_videos_cds/1/edit
  def edit
  end

  # POST /_jeux_videos_cds or /_jeux_videos_cds.json
  def create
    @_jeux_videos_cd = JeuxVideosCd.new(_jeux_videos_cd_params)

    respond_to do |format|
      if @_jeux_videos_cd.save
        format.html { redirect_to _jeux_videos_cd_url(@_jeux_videos_cd), notice: "Jeux videos cd was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_cd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_cds/1 or /_jeux_videos_cds/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_cd.update(_jeux_videos_cd_params)
        format.html { redirect_to _jeux_videos_cd_url(@_jeux_videos_cd), notice: "Jeux videos cd was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_cd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_cd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_cds/1 or /_jeux_videos_cds/1.json
  def destroy
    @_jeux_videos_cd.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_cds_url, notice: "Jeux videos cd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_cd
      @_jeux_videos_cd = JeuxVideosCd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_cd_params
      params.require(:_jeux_videos_cd).permit(:name)
    end
end
