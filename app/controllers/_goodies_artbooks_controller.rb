class GoodiesArtbooksController < ApplicationController
  before_action :set__goodies_artbook, only: %i[ show edit update destroy ]

  # GET /_goodies_artbooks or /_goodies_artbooks.json
  def index
    @_goodies_artbooks = GoodiesArtbook.all
  end

  # GET /_goodies_artbooks/1 or /_goodies_artbooks/1.json
  def show
  end

  # GET /_goodies_artbooks/new
  def new
    @_goodies_artbook = GoodiesArtbook.new
  end

  # GET /_goodies_artbooks/1/edit
  def edit
  end

  # POST /_goodies_artbooks or /_goodies_artbooks.json
  def create
    @_goodies_artbook = GoodiesArtbook.new(_goodies_artbook_params)

    respond_to do |format|
      if @_goodies_artbook.save
        format.html { redirect_to _goodies_artbook_url(@_goodies_artbook), notice: "Goodies artbook was successfully created." }
        format.json { render :show, status: :created, location: @_goodies_artbook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_goodies_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_goodies_artbooks/1 or /_goodies_artbooks/1.json
  def update
    respond_to do |format|
      if @_goodies_artbook.update(_goodies_artbook_params)
        format.html { redirect_to _goodies_artbook_url(@_goodies_artbook), notice: "Goodies artbook was successfully updated." }
        format.json { render :show, status: :ok, location: @_goodies_artbook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_goodies_artbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_goodies_artbooks/1 or /_goodies_artbooks/1.json
  def destroy
    @_goodies_artbook.destroy!

    respond_to do |format|
      format.html { redirect_to _goodies_artbooks_url, notice: "Goodies artbook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__goodies_artbook
      @_goodies_artbook = GoodiesArtbook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _goodies_artbook_params
      params.require(:_goodies_artbook).permit(:name)
    end
end
