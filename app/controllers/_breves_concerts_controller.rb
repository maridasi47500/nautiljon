class BrevesConcertsController < ApplicationController
  before_action :set__breves_concert, only: %i[ show edit update destroy ]

  # GET /_breves_concerts or /_breves_concerts.json
  def index
    @_breves_concerts = BrevesConcert.all
  end

  # GET /_breves_concerts/1 or /_breves_concerts/1.json
  def show
  end

  # GET /_breves_concerts/new
  def new
    @_breves_concert = BrevesConcert.new
  end

  # GET /_breves_concerts/1/edit
  def edit
  end

  # POST /_breves_concerts or /_breves_concerts.json
  def create
    @_breves_concert = BrevesConcert.new(_breves_concert_params)

    respond_to do |format|
      if @_breves_concert.save
        format.html { redirect_to _breves_concert_url(@_breves_concert), notice: "Breves concert was successfully created." }
        format.json { render :show, status: :created, location: @_breves_concert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_concerts/1 or /_breves_concerts/1.json
  def update
    respond_to do |format|
      if @_breves_concert.update(_breves_concert_params)
        format.html { redirect_to _breves_concert_url(@_breves_concert), notice: "Breves concert was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_concert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_concerts/1 or /_breves_concerts/1.json
  def destroy
    @_breves_concert.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_concerts_url, notice: "Breves concert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_concert
      @_breves_concert = BrevesConcert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_concert_params
      params.require(:_breves_concert).permit(:name)
    end
end
