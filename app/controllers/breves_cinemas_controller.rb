class BrevesCinemasController < ApplicationController
  before_action :set__breves_cinema, only: %i[ show edit update destroy ]

  # GET /_breves_cinemas or /_breves_cinemas.json
  def index
    @_breves_cinemas = BrevesCinema.all
  end

  # GET /_breves_cinemas/1 or /_breves_cinemas/1.json
  def show
  end

  # GET /_breves_cinemas/new
  def new
    @_breves_cinema = BrevesCinema.new
  end

  # GET /_breves_cinemas/1/edit
  def edit
  end

  # POST /_breves_cinemas or /_breves_cinemas.json
  def create
    @_breves_cinema = BrevesCinema.new(_breves_cinema_params)

    respond_to do |format|
      if @_breves_cinema.save
        format.html { redirect_to _breves_cinema_url(@_breves_cinema), notice: "Breves cinema was successfully created." }
        format.json { render :show, status: :created, location: @_breves_cinema }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_cinemas/1 or /_breves_cinemas/1.json
  def update
    respond_to do |format|
      if @_breves_cinema.update(_breves_cinema_params)
        format.html { redirect_to _breves_cinema_url(@_breves_cinema), notice: "Breves cinema was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_cinema }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_cinemas/1 or /_breves_cinemas/1.json
  def destroy
    @_breves_cinema.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_cinemas_url, notice: "Breves cinema was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_cinema
      @_breves_cinema = BrevesCinema.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_cinema_params
      params.require(:_breves_cinema).permit(:name)
    end
end
