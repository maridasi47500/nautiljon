class BrevesAnimeStudiosController < ApplicationController
  before_action :set__breves_anime_studio, only: %i[ show edit update destroy ]

  # GET /_breves_anime_studios or /_breves_anime_studios.json
  def index
    @_breves_anime_studios = BrevesAnimeStudio.all
  end

  # GET /_breves_anime_studios/1 or /_breves_anime_studios/1.json
  def show
  end

  # GET /_breves_anime_studios/new
  def new
    @_breves_anime_studio = BrevesAnimeStudio.new
  end

  # GET /_breves_anime_studios/1/edit
  def edit
  end

  # POST /_breves_anime_studios or /_breves_anime_studios.json
  def create
    @_breves_anime_studio = BrevesAnimeStudio.new(_breves_anime_studio_params)

    respond_to do |format|
      if @_breves_anime_studio.save
        format.html { redirect_to _breves_anime_studio_url(@_breves_anime_studio), notice: "Breves anime studio was successfully created." }
        format.json { render :show, status: :created, location: @_breves_anime_studio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_anime_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_anime_studios/1 or /_breves_anime_studios/1.json
  def update
    respond_to do |format|
      if @_breves_anime_studio.update(_breves_anime_studio_params)
        format.html { redirect_to _breves_anime_studio_url(@_breves_anime_studio), notice: "Breves anime studio was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_anime_studio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_anime_studio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_anime_studios/1 or /_breves_anime_studios/1.json
  def destroy
    @_breves_anime_studio.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_anime_studios_url, notice: "Breves anime studio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_anime_studio
      @_breves_anime_studio = BrevesAnimeStudio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_anime_studio_params
      params.require(:_breves_anime_studio).permit(:name)
    end
end
