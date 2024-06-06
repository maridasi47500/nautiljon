class JeuxVideosDoujinsController < ApplicationController
  before_action :set__jeux_videos_doujin, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_doujins or /_jeux_videos_doujins.json
  def index
    @_jeux_videos_doujins = JeuxVideosDoujin.all
  end

  # GET /_jeux_videos_doujins/1 or /_jeux_videos_doujins/1.json
  def show
  end

  # GET /_jeux_videos_doujins/new
  def new
    @_jeux_videos_doujin = JeuxVideosDoujin.new
  end

  # GET /_jeux_videos_doujins/1/edit
  def edit
  end

  # POST /_jeux_videos_doujins or /_jeux_videos_doujins.json
  def create
    @_jeux_videos_doujin = JeuxVideosDoujin.new(_jeux_videos_doujin_params)

    respond_to do |format|
      if @_jeux_videos_doujin.save
        format.html { redirect_to jeux_videos_doujin_url(@_jeux_videos_doujin), notice: "Jeux videos doujin was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_doujin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_doujins/1 or /_jeux_videos_doujins/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_doujin.update(_jeux_videos_doujin_params)
        format.html { redirect_to jeux_videos_doujin_url(@_jeux_videos_doujin), notice: "Jeux videos doujin was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_doujin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_doujin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_doujins/1 or /_jeux_videos_doujins/1.json
  def destroy
    @_jeux_videos_doujin.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_doujins_url, notice: "Jeux videos doujin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_doujin
      @_jeux_videos_doujin = JeuxVideosDoujin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_doujin_params
      params.require(:jeux_videos_doujin).permit(:name)
    end
end
