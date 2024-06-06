class JeuxVideosSondagesController < ApplicationController
  before_action :set__jeux_videos_sondage, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_sondages or /_jeux_videos_sondages.json
  def index
    @_jeux_videos_sondages = JeuxVideosSondage.all
  end

  # GET /_jeux_videos_sondages/1 or /_jeux_videos_sondages/1.json
  def show
  end

  # GET /_jeux_videos_sondages/new
  def new
    @_jeux_videos_sondage = JeuxVideosSondage.new
  end

  # GET /_jeux_videos_sondages/1/edit
  def edit
  end

  # POST /_jeux_videos_sondages or /_jeux_videos_sondages.json
  def create
    @_jeux_videos_sondage = JeuxVideosSondage.new(_jeux_videos_sondage_params)

    respond_to do |format|
      if @_jeux_videos_sondage.save
        format.html { redirect_to jeux_videos_sondage_url(@_jeux_videos_sondage), notice: "Jeux videos sondage was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_sondage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_sondages/1 or /_jeux_videos_sondages/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_sondage.update(_jeux_videos_sondage_params)
        format.html { redirect_to jeux_videos_sondage_url(@_jeux_videos_sondage), notice: "Jeux videos sondage was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_sondage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_sondage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_sondages/1 or /_jeux_videos_sondages/1.json
  def destroy
    @_jeux_videos_sondage.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_sondages_url, notice: "Jeux videos sondage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_sondage
      @_jeux_videos_sondage = JeuxVideosSondage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_sondage_params
      params.require(:jeux_videos_sondage).permit(:name)
    end
end
