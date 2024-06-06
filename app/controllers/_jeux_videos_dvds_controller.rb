class JeuxVideosDvdsController < ApplicationController
  before_action :set__jeux_videos_dvd, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_dvds or /_jeux_videos_dvds.json
  def index
    @_jeux_videos_dvds = JeuxVideosDvd.all
  end

  # GET /_jeux_videos_dvds/1 or /_jeux_videos_dvds/1.json
  def show
  end

  # GET /_jeux_videos_dvds/new
  def new
    @_jeux_videos_dvd = JeuxVideosDvd.new
  end

  # GET /_jeux_videos_dvds/1/edit
  def edit
  end

  # POST /_jeux_videos_dvds or /_jeux_videos_dvds.json
  def create
    @_jeux_videos_dvd = JeuxVideosDvd.new(_jeux_videos_dvd_params)

    respond_to do |format|
      if @_jeux_videos_dvd.save
        format.html { redirect_to _jeux_videos_dvd_url(@_jeux_videos_dvd), notice: "Jeux videos dvd was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_dvd }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_dvds/1 or /_jeux_videos_dvds/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_dvd.update(_jeux_videos_dvd_params)
        format.html { redirect_to _jeux_videos_dvd_url(@_jeux_videos_dvd), notice: "Jeux videos dvd was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_dvd }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_dvd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_dvds/1 or /_jeux_videos_dvds/1.json
  def destroy
    @_jeux_videos_dvd.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_dvds_url, notice: "Jeux videos dvd was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_dvd
      @_jeux_videos_dvd = JeuxVideosDvd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_dvd_params
      params.require(:_jeux_videos_dvd).permit(:name)
    end
end
