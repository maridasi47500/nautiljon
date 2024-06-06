class MangasArtbooksController < ApplicationController
  before_action :set__mangas_artbook, only: %i[ show edit update destroy ]

  # GET /_mangas_artbooks or /_mangas_artbooks.json
  def index
    @_mangas_artbooks = MangasArtbook.all
  end

  # GET /_mangas_artbooks/1 or /_mangas_artbooks/1.json
  def show
  end

  # GET /_mangas_artbooks/new
  def new
    @_mangas_artbook = MangasArtbook.new
  end

  # GET /_mangas_artbooks/1/edit
  def edit
  end

  # POST /_mangas_artbooks or /_mangas_artbooks.json
  def create
    @_mangas_artbook = MangasArtbook.new(_mangas_artbook_params)

    respond_to do |format|
      if @_mangas_artbook.save
        format.html { redirect_to mangas_artbook_url(@_mangas_artbook), notice: "Mangas artbook was successfully created." }
        format.json { render :show, status: :created, location: @_mangas_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_mangas_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_mangas_artbooks/1 or /_mangas_artbooks/1.json
  def update
    respond_to do |format|
      if @_mangas_artbook.update(_mangas_artbook_params)
        format.html { redirect_to mangas_artbook_url(@_mangas_artbook), notice: "Mangas artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_mangas_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_mangas_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_mangas_artbooks/1 or /_mangas_artbooks/1.json
  def destroy
    @_mangas_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to mangas_artbooks_url, notice: "Mangas artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__mangas_artbook
      @_mangas_artbook = MangasArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _mangas_artbook_params
      params.require(:mangas_artbook).permit(:name)
    end
end
