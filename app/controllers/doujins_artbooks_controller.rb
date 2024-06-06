class DoujinsArtbooksController < ApplicationController
  before_action :set__doujins_artbook, only: %i[ show edit update destroy ]

  # GET /_doujins_artbooks or /_doujins_artbooks.json
  def index
    @_doujins_artbooks = DoujinsArtbook.all
  end

  # GET /_doujins_artbooks/1 or /_doujins_artbooks/1.json
  def show
  end

  # GET /_doujins_artbooks/new
  def new
    @_doujins_artbook = DoujinsArtbook.new
  end

  # GET /_doujins_artbooks/1/edit
  def edit
  end

  # POST /_doujins_artbooks or /_doujins_artbooks.json
  def create
    @_doujins_artbook = DoujinsArtbook.new(_doujins_artbook_params)

    respond_to do |format|
      if @_doujins_artbook.save
        format.html { redirect_to doujins_artbook_url(@_doujins_artbook), notice: "Doujins artbook was successfully created." }
        format.json { render :show, status: :created, location: @_doujins_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_doujins_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_doujins_artbooks/1 or /_doujins_artbooks/1.json
  def update
    respond_to do |format|
      if @_doujins_artbook.update(_doujins_artbook_params)
        format.html { redirect_to doujins_artbook_url(@_doujins_artbook), notice: "Doujins artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_doujins_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_doujins_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_doujins_artbooks/1 or /_doujins_artbooks/1.json
  def destroy
    @_doujins_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to doujins_artbooks_url, notice: "Doujins artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__doujins_artbook
      @_doujins_artbook = DoujinsArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _doujins_artbook_params
      params.require(:doujins_artbook).permit(:name)
    end
end
