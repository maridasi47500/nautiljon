class ConcertsArtistesController < ApplicationController
  before_action :set__concerts_artiste, only: %i[ show edit update destroy ]

  # GET /_concerts_artistes or /_concerts_artistes.json
  def index
    @_concerts_artistes = ConcertsArtiste.all
  end

  # GET /_concerts_artistes/1 or /_concerts_artistes/1.json
  def show
  end

  # GET /_concerts_artistes/new
  def new
    @_concerts_artiste = ConcertsArtiste.new
  end

  # GET /_concerts_artistes/1/edit
  def edit
  end

  # POST /_concerts_artistes or /_concerts_artistes.json
  def create
    @_concerts_artiste = ConcertsArtiste.new(_concerts_artiste_params)

    respond_to do |format|
      if @_concerts_artiste.save
        format.html { redirect_to _concerts_artiste_url(@_concerts_artiste), notice: "Concerts artiste was successfully created." }
        format.json { render :show, status: :created, location: @_concerts_artiste }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_concerts_artiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_concerts_artistes/1 or /_concerts_artistes/1.json
  def update
    respond_to do |format|
      if @_concerts_artiste.update(_concerts_artiste_params)
        format.html { redirect_to _concerts_artiste_url(@_concerts_artiste), notice: "Concerts artiste was successfully updated." }
        format.json { render :show, status: :ok, location: @_concerts_artiste }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_concerts_artiste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_concerts_artistes/1 or /_concerts_artistes/1.json
  def destroy
    @_concerts_artiste.destroy!

    respond_to do |format|
      format.html { redirect_to _concerts_artistes_url, notice: "Concerts artiste was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__concerts_artiste
      @_concerts_artiste = ConcertsArtiste.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _concerts_artiste_params
      params.require(:_concerts_artiste).permit(:name)
    end
end
