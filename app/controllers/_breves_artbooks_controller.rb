class BrevesArtbooksController < ApplicationController
  before_action :set__breves_artbook, only: %i[ show edit update destroy ]

  # GET /_breves_artbooks or /_breves_artbooks.json
  def index
    @_breves_artbooks = BrevesArtbook.all
  end

  # GET /_breves_artbooks/1 or /_breves_artbooks/1.json
  def show
  end

  # GET /_breves_artbooks/new
  def new
    @_breves_artbook = BrevesArtbook.new
  end

  # GET /_breves_artbooks/1/edit
  def edit
  end

  # POST /_breves_artbooks or /_breves_artbooks.json
  def create
    @_breves_artbook = BrevesArtbook.new(_breves_artbook_params)

    respond_to do |format|
      if @_breves_artbook.save
        format.html { redirect_to _breves_artbook_url(@_breves_artbook), notice: "Breves artbook was successfully created." }
        format.json { render :show, status: :created, location: @_breves_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_artbooks/1 or /_breves_artbooks/1.json
  def update
    respond_to do |format|
      if @_breves_artbook.update(_breves_artbook_params)
        format.html { redirect_to _breves_artbook_url(@_breves_artbook), notice: "Breves artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_artbooks/1 or /_breves_artbooks/1.json
  def destroy
    @_breves_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_artbooks_url, notice: "Breves artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_artbook
      @_breves_artbook = BrevesArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_artbook_params
      params.require(:_breves_artbook).permit(:name)
    end
end
