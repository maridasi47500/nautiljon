class ConcertsController < ApplicationController
  before_action :set__concert, only: %i[ show edit update destroy ]

  # GET /_concerts or /_concerts.json
  def index
    @_concerts = Concert.all
  end

  # GET /_concerts/1 or /_concerts/1.json
  def show
  end

  # GET /_concerts/new
  def new
    @_concert = Concert.new
  end

  # GET /_concerts/1/edit
  def edit
  end

  # POST /_concerts or /_concerts.json
  def create
    @_concert = Concert.new(_concert_params)

    respond_to do |format|
      if @_concert.save
        format.html { redirect_to _concert_url(@_concert), notice: "Concert was successfully created." }
        format.json { render :show, status: :created, location: @_concert }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_concerts/1 or /_concerts/1.json
  def update
    respond_to do |format|
      if @_concert.update(_concert_params)
        format.html { redirect_to _concert_url(@_concert), notice: "Concert was successfully updated." }
        format.json { render :show, status: :ok, location: @_concert }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_concert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_concerts/1 or /_concerts/1.json
  def destroy
    @_concert.destroy!

    respond_to do |format|
      format.html { redirect_to _concerts_url, notice: "Concert was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__concert
      @_concert = Concert.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _concert_params
      params.require(:_concert).permit(:date, :_concerts_artiste_id, :nom, :endroit, :adresse, :ville, :_concerts_pays_id, :infos, :lien, :prix, :heure, :acceptregles)
    end
end
