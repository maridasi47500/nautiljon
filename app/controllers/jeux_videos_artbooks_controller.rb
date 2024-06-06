class JeuxVideosArtbooksController < ApplicationController
  before_action :set__jeux_videos_artbook, only: %i[ show edit update destroy ]

  # GET /_jeux_videos_artbooks or /_jeux_videos_artbooks.json
  def index
    @_jeux_videos_artbooks = JeuxVideosArtbook.all
  end

  # GET /_jeux_videos_artbooks/1 or /_jeux_videos_artbooks/1.json
  def show
  end

  # GET /_jeux_videos_artbooks/new
  def new
    @_jeux_videos_artbook = JeuxVideosArtbook.new
  end

  # GET /_jeux_videos_artbooks/1/edit
  def edit
  end

  # POST /_jeux_videos_artbooks or /_jeux_videos_artbooks.json
  def create
    @_jeux_videos_artbook = JeuxVideosArtbook.new(_jeux_videos_artbook_params)

    respond_to do |format|
      if @_jeux_videos_artbook.save
        format.html { redirect_to jeux_videos_artbook_url(@_jeux_videos_artbook), notice: "Jeux videos artbook was successfully created." }
        format.json { render :show, status: :created, location: @_jeux_videos_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_jeux_videos_artbooks/1 or /_jeux_videos_artbooks/1.json
  def update
    respond_to do |format|
      if @_jeux_videos_artbook.update(_jeux_videos_artbook_params)
        format.html { redirect_to jeux_videos_artbook_url(@_jeux_videos_artbook), notice: "Jeux videos artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_jeux_videos_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_jeux_videos_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_jeux_videos_artbooks/1 or /_jeux_videos_artbooks/1.json
  def destroy
    @_jeux_videos_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to jeux_videos_artbooks_url, notice: "Jeux videos artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__jeux_videos_artbook
      @_jeux_videos_artbook = JeuxVideosArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _jeux_videos_artbook_params
      params.require(:jeux_videos_artbook).permit(:name)
    end
end
