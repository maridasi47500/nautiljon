class ArtbooksActualiteMinisController < ApplicationController
  before_action :set_artbooks_actualite_mini, only: %i[ show edit update destroy ]

  # GET /artbooks_actualite_minis or /artbooks_actualite_minis.json
  def index
    @artbooks_actualite_minis = ArtbooksActualiteMini.all
  end

  # GET /artbooks_actualite_minis/1 or /artbooks_actualite_minis/1.json
  def show
  end

  # GET /artbooks_actualite_minis/new
  def new
    @artbooks_actualite_mini = ArtbooksActualiteMini.new
  end

  # GET /artbooks_actualite_minis/1/edit
  def edit
  end

  # POST /artbooks_actualite_minis or /artbooks_actualite_minis.json
  def create
    @artbooks_actualite_mini = ArtbooksActualiteMini.new(artbooks_actualite_mini_params)

    respond_to do |format|
      if @artbooks_actualite_mini.save
        format.html { redirect_to artbooks_actualite_mini_url(@artbooks_actualite_mini), notice: "Artbooks actualite mini was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_actualite_mini }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_actualite_minis/1 or /artbooks_actualite_minis/1.json
  def update
    respond_to do |format|
      if @artbooks_actualite_mini.update(artbooks_actualite_mini_params)
        format.html { redirect_to artbooks_actualite_mini_url(@artbooks_actualite_mini), notice: "Artbooks actualite mini was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_actualite_mini }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_actualite_mini.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_actualite_minis/1 or /artbooks_actualite_minis/1.json
  def destroy
    @artbooks_actualite_mini.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_actualite_minis_url, notice: "Artbooks actualite mini was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_actualite_mini
      @artbooks_actualite_mini = ArtbooksActualiteMini.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_actualite_mini_params
      params.require(:artbooks_actualite_mini).permit(:name)
    end
end
