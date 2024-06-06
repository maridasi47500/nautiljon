class FilmsAsiatiquesCinemasController < ApplicationController
  before_action :set__films_asiatiques_cinema, only: %i[ show edit update destroy ]

  # GET /_films_asiatiques_cinemas or /_films_asiatiques_cinemas.json
  def index
    @_films_asiatiques_cinemas = FilmsAsiatiquesCinema.all
  end

  # GET /_films_asiatiques_cinemas/1 or /_films_asiatiques_cinemas/1.json
  def show
  end

  # GET /_films_asiatiques_cinemas/new
  def new
    @_films_asiatiques_cinema = FilmsAsiatiquesCinema.new
  end

  # GET /_films_asiatiques_cinemas/1/edit
  def edit
  end

  # POST /_films_asiatiques_cinemas or /_films_asiatiques_cinemas.json
  def create
    @_films_asiatiques_cinema = FilmsAsiatiquesCinema.new(_films_asiatiques_cinema_params)

    respond_to do |format|
      if @_films_asiatiques_cinema.save
        format.html { redirect_to films_asiatiques_cinema_url(@_films_asiatiques_cinema), notice: "Films asiatiques cinema was successfully created." }
        format.json { render :show, status: :created, location: @_films_asiatiques_cinema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_films_asiatiques_cinemas/1 or /_films_asiatiques_cinemas/1.json
  def update
    respond_to do |format|
      if @_films_asiatiques_cinema.update(_films_asiatiques_cinema_params)
        format.html { redirect_to films_asiatiques_cinema_url(@_films_asiatiques_cinema), notice: "Films asiatiques cinema was successfully updated." }
        format.json { render :show, status: :ok, location: @_films_asiatiques_cinema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_films_asiatiques_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_films_asiatiques_cinemas/1 or /_films_asiatiques_cinemas/1.json
  def destroy
    @_films_asiatiques_cinema.destroy!

    respond_to do |format|
      format.html { redirect_to films_asiatiques_cinemas_url, notice: "Films asiatiques cinema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__films_asiatiques_cinema
      @_films_asiatiques_cinema = FilmsAsiatiquesCinema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _films_asiatiques_cinema_params
      params.require(:films_asiatiques_cinema).permit(:name)
    end
end
