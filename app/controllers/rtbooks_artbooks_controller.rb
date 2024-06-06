class ArtbooksArtbooksController < ApplicationController
  before_action :set_artbooks_artbook, only: %i[ show edit update destroy ]

  # GET /artbooks_artbooks or /artbooks_artbooks.json
  def index
    @artbooks_artbooks = ArtbooksArtbook.all
  end

  # GET /artbooks_artbooks/1 or /artbooks_artbooks/1.json
  def show
  end

  # GET /artbooks_artbooks/new
  def new
    @artbooks_artbook = ArtbooksArtbook.new
  end

  # GET /artbooks_artbooks/1/edit
  def edit
  end

  # POST /artbooks_artbooks or /artbooks_artbooks.json
  def create
    @artbooks_artbook = ArtbooksArtbook.new(artbooks_artbook_params)

    respond_to do |format|
      if @artbooks_artbook.save
        format.html { redirect_to artbooks_artbook_url(@artbooks_artbook), notice: "Artbooks artbook was successfully created." }
        format.json { render :show, status: :created, location: @artbooks_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artbooks_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artbooks_artbooks/1 or /artbooks_artbooks/1.json
  def update
    respond_to do |format|
      if @artbooks_artbook.update(artbooks_artbook_params)
        format.html { redirect_to artbooks_artbook_url(@artbooks_artbook), notice: "Artbooks artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @artbooks_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artbooks_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artbooks_artbooks/1 or /artbooks_artbooks/1.json
  def destroy
    @artbooks_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to artbooks_artbooks_url, notice: "Artbooks artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artbooks_artbook
      @artbooks_artbook = ArtbooksArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artbooks_artbook_params
      params.require(:artbooks_artbook).permit(:name)
    end
end
