class JeuxVideosUniversController < ApplicationController
  before_action :set__jeux_videos_univer, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_univers or /_jeux_videos_univers.json
  def index
    @_jeux_videos_univers = JeuxVideosUniver.all
  end

  # GET /_jeux_videos_univers/1 or /_jeux_videos_univers/1.json
  def show
  end

  # GET /_jeux_videos_univers/new
  def new
    @_jeux_videos_univer = JeuxVideosUniver.new
  end

  # GET /_jeux_videos_univers/1/edit
  def edit
  end

  # POST /_jeux_videos_univers or /_jeux_videos_univers.json
  def create
    @_jeux_videos_univer = JeuxVideosUniver.new(_jeux_videos_univer_params)

    respond_to do |format|
      if @_jeux_videos_univer.save
        format.html { redirect_to _jeux_videos_univer_url(@_jeux_videos_univer), notice: "Jeux videos univer was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_univer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_univers/1 or /_jeux_videos_univers/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_univer.update(_jeux_videos_univer_params)
        format.html { redirect_to _jeux_videos_univer_url(@_jeux_videos_univer), notice: "Jeux videos univer was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_univer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_univer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_univers/1 or /_jeux_videos_univers/1.json
  def destroy
    @_jeux_videos_univer.destroy!

    respond_to do |format|
      format.html { redirect_to _jeux_videos_univers_url, notice: "Jeux videos univer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_univer
      @_jeux_videos_univer = JeuxVideosUniver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_univer_params
      params.require(:_jeux_videos_univer).permit(:name)
    end
end
