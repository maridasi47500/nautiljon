class ArtbooksIllustrationsController < ApplicationController
  before_action :set_artbooks_illustration, only: %i[ show edit update destroy ]

  # GET /artbooks_illustrations or /artbooks_illustrations.json
  def index
    @artbooks_illustrations = ArtbooksIllustration.all
  end

  # GET /artbooks_illustrations/1 or /artbooks_illustrations/1.json
  def show
  end

  # GET /artbooks_illustrations/new
  def new
    @artbooks_illustration = ArtbooksIllustration.new
  end

  # GET /artbooks_illustrations/1/edit
  def edit
  end

  # POST /artbooks_illustrations or /artbooks_illustrations.json
  def create
    @artbooks_illustration = ArtbooksIllustration.new(artbooks_illustration_params)

    respond_to do |format|
      if @artbooks_illustration.save
        format.html { redirect_to artbooks_illustration_url(@artbooks_illustration), notice: "Artbooks illustration was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_illustration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_illustrations/1 or /artbooks_illustrations/1.json
  def update
    respond_to do |format|
      if @artbooks_illustration.update(artbooks_illustration_params)
        format.html { redirect_to artbooks_illustration_url(@artbooks_illustration), notice: "Artbooks illustration was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_illustration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_illustration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_illustrations/1 or /artbooks_illustrations/1.json
  def destroy
    @artbooks_illustration.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_illustrations_url, notice: "Artbooks illustration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_illustration
      @artbooks_illustration = ArtbooksIllustration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_illustration_params
      params.require(:artbooks_illustration).permit(:name)
    end
end
