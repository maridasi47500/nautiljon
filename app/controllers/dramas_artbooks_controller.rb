class DramasArtbooksController < ApplicationController
  before_action :set__dramas_artbook, only: %i[ show edit update destroy ]

  # GET /_dramas_artbooks or /_dramas_artbooks.json
  def index
    @_dramas_artbooks = DramasArtbook.all
  end

  # GET /_dramas_artbooks/1 or /_dramas_artbooks/1.json
  def show
  end

  # GET /_dramas_artbooks/new
  def new
    @_dramas_artbook = DramasArtbook.new
  end

  # GET /_dramas_artbooks/1/edit
  def edit
  end

  # POST /_dramas_artbooks or /_dramas_artbooks.json
  def create
    @_dramas_artbook = DramasArtbook.new(_dramas_artbook_params)

    respond_to do |format|
      if @_dramas_artbook.save
        format.html { redirect_to _dramas_artbook_url(@_dramas_artbook), notice: "Dramas artbook was successfully created." }
        format.json { render :show, status: :created, location: @_dramas_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_dramas_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_dramas_artbooks/1 or /_dramas_artbooks/1.json
  def update
    respond_to do |format|
      if @_dramas_artbook.update(_dramas_artbook_params)
        format.html { redirect_to _dramas_artbook_url(@_dramas_artbook), notice: "Dramas artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_dramas_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_dramas_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_dramas_artbooks/1 or /_dramas_artbooks/1.json
  def destroy
    @_dramas_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to _dramas_artbooks_url, notice: "Dramas artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__dramas_artbook
      @_dramas_artbook = DramasArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _dramas_artbook_params
      params.require(:_dramas_artbook).permit(:name)
    end
end
