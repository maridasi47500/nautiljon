class AnimesCinemasController < ApplicationController
  before_action :set_animes_cinema, only: %i[ show edit update destroy ]

  # GET /animes_cinemas or /animes_cinemas.json
  def index
    @animes_cinemas = AnimesCinema.all
  end

  # GET /animes_cinemas/1 or /animes_cinemas/1.json
  def show
  end

  # GET /animes_cinemas/new
  def new
    @animes_cinema = AnimesCinema.new
  end

  # GET /animes_cinemas/1/edit
  def edit
  end

  # POST /animes_cinemas or /animes_cinemas.json
  def create
    @animes_cinema = AnimesCinema.new(animes_cinema_params)

    respond_to do |format|
      if @animes_cinema.save
        format.html { redirect_to animes_cinema_url(@animes_cinema), notice: "Animes cinema was successfully created." }
        format.json { render :show, status: :created, location: @animes_cinema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_cinemas/1 or /animes_cinemas/1.json
  def update
    respond_to do |format|
      if @animes_cinema.update(animes_cinema_params)
        format.html { redirect_to animes_cinema_url(@animes_cinema), notice: "Animes cinema was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_cinema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_cinemas/1 or /animes_cinemas/1.json
  def destroy
    @animes_cinema.destroy!

    respond_to do |format|
      format.html { redirect_to animes_cinemas_url, notice: "Animes cinema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_cinema
      @animes_cinema = AnimesCinema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_cinema_params
      params.require(:animes_cinema).permit(:name)
    end
end
