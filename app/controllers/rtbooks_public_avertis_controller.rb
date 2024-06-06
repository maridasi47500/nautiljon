class ArtbooksPublicAvertisController < ApplicationController
  before_action :set_artbooks_public_averti, only: %i[ show edit update destroy ]

  # GET /artbooks_public_avertis or /artbooks_public_avertis.json
  def index
    @artbooks_public_avertis = ArtbooksPublicAverti.all
  end

  # GET /artbooks_public_avertis/1 or /artbooks_public_avertis/1.json
  def show
  end

  # GET /artbooks_public_avertis/new
  def new
    @artbooks_public_averti = ArtbooksPublicAverti.new
  end

  # GET /artbooks_public_avertis/1/edit
  def edit
  end

  # POST /artbooks_public_avertis or /artbooks_public_avertis.json
  def create
    @artbooks_public_averti = ArtbooksPublicAverti.new(artbooks_public_averti_params)

    respond_to do |format|
      if @artbooks_public_averti.save
        format.html { redirect_to artbooks_public_averti_url(@artbooks_public_averti), notice: "Artbooks public averti was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_public_averti }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_public_avertis/1 or /artbooks_public_avertis/1.json
  def update
    respond_to do |format|
      if @artbooks_public_averti.update(artbooks_public_averti_params)
        format.html { redirect_to artbooks_public_averti_url(@artbooks_public_averti), notice: "Artbooks public averti was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_public_averti }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_public_averti.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_public_avertis/1 or /artbooks_public_avertis/1.json
  def destroy
    @artbooks_public_averti.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_public_avertis_url, notice: "Artbooks public averti was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_public_averti
      @artbooks_public_averti = ArtbooksPublicAverti.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_public_averti_params
      params.require(:artbooks_public_averti).permit(:name)
    end
end
