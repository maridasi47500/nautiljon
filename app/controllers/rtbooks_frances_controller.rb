class ArtbooksFrancesController < ApplicationController
  before_action :set_artbooks_france, only: %i[ show edit update destroy ]

  # GET /artbooks_frances or /artbooks_frances.json
  def index
    @artbooks_frances = ArtbooksFrance.all
  end

  # GET /artbooks_frances/1 or /artbooks_frances/1.json
  def show
  end

  # GET /artbooks_frances/new
  def new
    @artbooks_france = ArtbooksFrance.new
  end

  # GET /artbooks_frances/1/edit
  def edit
  end

  # POST /artbooks_frances or /artbooks_frances.json
  def create
    @artbooks_france = ArtbooksFrance.new(artbooks_france_params)

    respond_to do |format|
      if @artbooks_france.save
        format.html { redirect_to artbooks_france_url(@artbooks_france), notice: "Artbooks france was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_france }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_frances/1 or /artbooks_frances/1.json
  def update
    respond_to do |format|
      if @artbooks_france.update(artbooks_france_params)
        format.html { redirect_to artbooks_france_url(@artbooks_france), notice: "Artbooks france was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_france }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_france.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_frances/1 or /artbooks_frances/1.json
  def destroy
    @artbooks_france.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_frances_url, notice: "Artbooks france was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_france
      @artbooks_france = ArtbooksFrance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_france_params
      params.require(:artbooks_france).permit(:name)
    end
end
