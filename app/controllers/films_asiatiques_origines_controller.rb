class FilmsAsiatiquesOriginesController < ApplicationController
  before_action :set__films_asiatiques_origine, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_origines or /_films_asiatiques_origines.json
  def index
    @_films_asiatiques_origines = FilmsAsiatiquesOrigine.all
  end

  # GET /_films_asiatiques_origines/1 or /_films_asiatiques_origines/1.json
  def show
  end

  # GET /_films_asiatiques_origines/new
  def new
    @_films_asiatiques_origine = FilmsAsiatiquesOrigine.new
  end

  # GET /_films_asiatiques_origines/1/edit
  def edit
  end

  # POST /_films_asiatiques_origines or /_films_asiatiques_origines.json
  def create
    @_films_asiatiques_origine = FilmsAsiatiquesOrigine.new(_films_asiatiques_origine_params)

    respond_to do |format|
      if @_films_asiatiques_origine.save
        format.html { redirect_to _films_asiatiques_origine_url(@_films_asiatiques_origine), notice: "Films asiatiques origine was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_origine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_origines/1 or /_films_asiatiques_origines/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_origine.update(_films_asiatiques_origine_params)
        format.html { redirect_to _films_asiatiques_origine_url(@_films_asiatiques_origine), notice: "Films asiatiques origine was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_origine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_origine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_origines/1 or /_films_asiatiques_origines/1.json
  def destroy
    @_films_asiatiques_origine.destroy!

    respond_to do |format|
      format.html { redirect_to _films_asiatiques_origines_url, notice: "Films asiatiques origine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_origine
      @_films_asiatiques_origine = FilmsAsiatiquesOrigine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_origine_params
      params.require(:_films_asiatiques_origine).permit(:name)
    end
end
