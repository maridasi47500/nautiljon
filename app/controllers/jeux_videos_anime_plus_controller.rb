class JeuxVideosAnimePlusController < ApplicationController
  before_action :set__jeux_videos_anime_plu, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_anime_plus or /_jeux_videos_anime_plus.json
  def index
    @_jeux_videos_anime_plus = JeuxVideosAnimePlu.all
  end

  # GET /_jeux_videos_anime_plus/1 or /_jeux_videos_anime_plus/1.json
  def show
  end

  # GET /_jeux_videos_anime_plus/new
  def new
    @_jeux_videos_anime_plu = JeuxVideosAnimePlu.new
  end

  # GET /_jeux_videos_anime_plus/1/edit
  def edit
  end

  # POST /_jeux_videos_anime_plus or /_jeux_videos_anime_plus.json
  def create
    @_jeux_videos_anime_plu = JeuxVideosAnimePlu.new(_jeux_videos_anime_plu_params)

    respond_to do |format|
      if @_jeux_videos_anime_plu.save
        format.html { redirect_to jeux_videos_anime_plu_url(@_jeux_videos_anime_plu), notice: "Jeux videos anime plu was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_anime_plu }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_anime_plus/1 or /_jeux_videos_anime_plus/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_anime_plu.update(_jeux_videos_anime_plu_params)
        format.html { redirect_to jeux_videos_anime_plu_url(@_jeux_videos_anime_plu), notice: "Jeux videos anime plu was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_anime_plu }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_anime_plu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_anime_plus/1 or /_jeux_videos_anime_plus/1.json
  def destroy
    @_jeux_videos_anime_plu.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_anime_plus_url, notice: "Jeux videos anime plu was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_anime_plu
      @_jeux_videos_anime_plu = JeuxVideosAnimePlu.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_anime_plu_params
      params.require(:jeux_videos_anime_plu).permit(:name)
    end
end
