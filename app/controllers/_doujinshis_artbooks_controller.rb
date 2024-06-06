class DoujinshisArtbooksController < ApplicationController
  before_action :set__doujinshis_artbook, only: %i[ show edit update destroy ]

  # GET /_doujinshis_artbooks or /_doujinshis_artbooks.json
  def index
    @_doujinshis_artbooks = DoujinshisArtbook.all
  end

  # GET /_doujinshis_artbooks/1 or /_doujinshis_artbooks/1.json
  def show
  end

  # GET /_doujinshis_artbooks/new
  def new
    @_doujinshis_artbook = DoujinshisArtbook.new
  end

  # GET /_doujinshis_artbooks/1/edit
  def edit
  end

  # POST /_doujinshis_artbooks or /_doujinshis_artbooks.json
  def create
    @_doujinshis_artbook = DoujinshisArtbook.new(_doujinshis_artbook_params)

    respond_to do |format|
      if @_doujinshis_artbook.save
        format.html { redirect_to _doujinshis_artbook_url(@_doujinshis_artbook), notice: "Doujinshis artbook was successfully created." }
        format.json { render :show, status: :created, location: @_doujinshis_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujinshis_artbooks/1 or /_doujinshis_artbooks/1.json
  def update
    respond_to do |format|
      if @_doujinshis_artbook.update(_doujinshis_artbook_params)
        format.html { redirect_to _doujinshis_artbook_url(@_doujinshis_artbook), notice: "Doujinshis artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujinshis_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujinshis_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujinshis_artbooks/1 or /_doujinshis_artbooks/1.json
  def destroy
    @_doujinshis_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to _doujinshis_artbooks_url, notice: "Doujinshis artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujinshis_artbook
      @_doujinshis_artbook = DoujinshisArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujinshis_artbook_params
      params.require(:_doujinshis_artbook).permit(:name)
    end
end
