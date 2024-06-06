class JeuxVideosDramasController < ApplicationController
  before_action :set__jeux_videos_drama, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_dramas or /_jeux_videos_dramas.json
  def index
    @_jeux_videos_dramas = JeuxVideosDrama.all
  end

  # GET /_jeux_videos_dramas/1 or /_jeux_videos_dramas/1.json
  def show
  end

  # GET /_jeux_videos_dramas/new
  def new
    @_jeux_videos_drama = JeuxVideosDrama.new
  end

  # GET /_jeux_videos_dramas/1/edit
  def edit
  end

  # POST /_jeux_videos_dramas or /_jeux_videos_dramas.json
  def create
    @_jeux_videos_drama = JeuxVideosDrama.new(_jeux_videos_drama_params)

    respond_to do |format|
      if @_jeux_videos_drama.save
        format.html { redirect_to jeux_videos_drama_url(@_jeux_videos_drama), notice: "Jeux videos drama was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_dramas/1 or /_jeux_videos_dramas/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_drama.update(_jeux_videos_drama_params)
        format.html { redirect_to jeux_videos_drama_url(@_jeux_videos_drama), notice: "Jeux videos drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_dramas/1 or /_jeux_videos_dramas/1.json
  def destroy
    @_jeux_videos_drama.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_dramas_url, notice: "Jeux videos drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_drama
      @_jeux_videos_drama = JeuxVideosDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_drama_params
      params.require(:jeux_videos_drama).permit(:name)
    end
end
