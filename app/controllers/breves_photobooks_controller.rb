class BrevesPhotobooksController < ApplicationController
  before_action :set__breves_photobook, only: %i[ show edit update destroy ]

  # GET /_breves_photobooks or /_breves_photobooks.json
  def index
    @_breves_photobooks = BrevesPhotobook.all
  end

  # GET /_breves_photobooks/1 or /_breves_photobooks/1.json
  def show
  end

  # GET /_breves_photobooks/new
  def new
    @_breves_photobook = BrevesPhotobook.new
  end

  # GET /_breves_photobooks/1/edit
  def edit
  end

  # POST /_breves_photobooks or /_breves_photobooks.json
  def create
    @_breves_photobook = BrevesPhotobook.new(_breves_photobook_params)

    respond_to do |format|
      if @_breves_photobook.save
        format.html { redirect_to breves_photobook_url(@_breves_photobook), notice: "Breves photobook was successfully created." }
        format.json { render :show, status: :created, location: @_breves_photobook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_photobooks/1 or /_breves_photobooks/1.json
  def update
    respond_to do |format|
      if @_breves_photobook.update(_breves_photobook_params)
        format.html { redirect_to breves_photobook_url(@_breves_photobook), notice: "Breves photobook was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_photobook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_photobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_photobooks/1 or /_breves_photobooks/1.json
  def destroy
    @_breves_photobook.destroy!

    respond_to do |format|
      format.html { redirect_to breves_photobooks_url, notice: "Breves photobook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_photobook
      @_breves_photobook = BrevesPhotobook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_photobook_params
      params.require(:breves_photobook).permit(:name)
    end
end
