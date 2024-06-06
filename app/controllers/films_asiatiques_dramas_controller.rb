class FilmsAsiatiquesDramasController < ApplicationController
  before_action :set__films_asiatiques_drama, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_dramas or /_films_asiatiques_dramas.json
  def index
    @_films_asiatiques_dramas = FilmsAsiatiquesDrama.all
  end

  # GET /_films_asiatiques_dramas/1 or /_films_asiatiques_dramas/1.json
  def show
  end

  # GET /_films_asiatiques_dramas/new
  def new
    @_films_asiatiques_drama = FilmsAsiatiquesDrama.new
  end

  # GET /_films_asiatiques_dramas/1/edit
  def edit
  end

  # POST /_films_asiatiques_dramas or /_films_asiatiques_dramas.json
  def create
    @_films_asiatiques_drama = FilmsAsiatiquesDrama.new(_films_asiatiques_drama_params)

    respond_to do |format|
      if @_films_asiatiques_drama.save
        format.html { redirect_to films_asiatiques_drama_url(@_films_asiatiques_drama), notice: "Films asiatiques drama was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_drama }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_dramas/1 or /_films_asiatiques_dramas/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_drama.update(_films_asiatiques_drama_params)
        format.html { redirect_to films_asiatiques_drama_url(@_films_asiatiques_drama), notice: "Films asiatiques drama was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_drama }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_drama.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_dramas/1 or /_films_asiatiques_dramas/1.json
  def destroy
    @_films_asiatiques_drama.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_dramas_url, notice: "Films asiatiques drama was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_drama
      @_films_asiatiques_drama = FilmsAsiatiquesDrama.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_drama_params
      params.require(:films_asiatiques_drama).permit(:name)
    end
end
