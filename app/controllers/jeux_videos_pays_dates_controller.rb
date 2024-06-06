class JeuxVideosPaysDatesController < ApplicationController
  before_action :set__jeux_videos_pays_date, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_pays_dates or /_jeux_videos_pays_dates.json
  def index
    @_jeux_videos_pays_dates = JeuxVideosPaysDate.all
  end

  # GET /_jeux_videos_pays_dates/1 or /_jeux_videos_pays_dates/1.json
  def show
  end

  # GET /_jeux_videos_pays_dates/new
  def new
    @_jeux_videos_pays_date = JeuxVideosPaysDate.new
  end

  # GET /_jeux_videos_pays_dates/1/edit
  def edit
  end

  # POST /_jeux_videos_pays_dates or /_jeux_videos_pays_dates.json
  def create
    @_jeux_videos_pays_date = JeuxVideosPaysDate.new(_jeux_videos_pays_date_params)

    respond_to do |format|
      if @_jeux_videos_pays_date.save
        format.html { redirect_to jeux_videos_pays_date_url(@_jeux_videos_pays_date), notice: "Jeux videos pays date was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_pays_date }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_pays_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_pays_dates/1 or /_jeux_videos_pays_dates/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_pays_date.update(_jeux_videos_pays_date_params)
        format.html { redirect_to jeux_videos_pays_date_url(@_jeux_videos_pays_date), notice: "Jeux videos pays date was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_pays_date }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_pays_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_pays_dates/1 or /_jeux_videos_pays_dates/1.json
  def destroy
    @_jeux_videos_pays_date.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_pays_dates_url, notice: "Jeux videos pays date was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_pays_date
      @_jeux_videos_pays_date = JeuxVideosPaysDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_pays_date_params
      params.require(:jeux_videos_pays_date).permit(:name)
    end
end
