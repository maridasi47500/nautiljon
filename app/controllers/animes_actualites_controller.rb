class AnimesActualitesController < ApplicationController
  before_action :set_animes_actualite, only: %i[ show edit update destroy ]

  # GET /animes_actualites or /animes_actualites.json
  def index
    @animes_actualites = AnimesActualite.all
  end

  # GET /animes_actualites/1 or /animes_actualites/1.json
  def show
  end

  # GET /animes_actualites/new
  def new
    @animes_actualite = AnimesActualite.new
  end

  # GET /animes_actualites/1/edit
  def edit
  end

  # POST /animes_actualites or /animes_actualites.json
  def create
    @animes_actualite = AnimesActualite.new(animes_actualite_params)

    respond_to do |format|
      if @animes_actualite.save
        format.html { redirect_to animes_actualite_url(@animes_actualite), notice: "Animes actualite was successfully created." }
        format.json { render :show, status: :created, location: @animes_actualite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @animes_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animes_actualites/1 or /animes_actualites/1.json
  def update
    respond_to do |format|
      if @animes_actualite.update(animes_actualite_params)
        format.html { redirect_to animes_actualite_url(@animes_actualite), notice: "Animes actualite was successfully updated." }
        format.json { render :show, status: :ok, location: @animes_actualite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @animes_actualite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animes_actualites/1 or /animes_actualites/1.json
  def destroy
    @animes_actualite.destroy!

    respond_to do |format|
      format.html { redirect_to animes_actualites_url, notice: "Animes actualite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animes_actualite
      @animes_actualite = AnimesActualite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def animes_actualite_params
      params.require(:animes_actualite).permit(:name)
    end
end
