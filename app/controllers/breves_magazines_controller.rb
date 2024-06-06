class BrevesMagazinesController < ApplicationController
  before_action :set__breves_magazine, only: %i[ show edit update destroy ]

  # GET /_breves_magazines or /_breves_magazines.json
  def index
    @_breves_magazines = BrevesMagazine.all
  end

  # GET /_breves_magazines/1 or /_breves_magazines/1.json
  def show
  end

  # GET /_breves_magazines/new
  def new
    @_breves_magazine = BrevesMagazine.new
  end

  # GET /_breves_magazines/1/edit
  def edit
  end

  # POST /_breves_magazines or /_breves_magazines.json
  def create
    @_breves_magazine = BrevesMagazine.new(_breves_magazine_params)

    respond_to do |format|
      if @_breves_magazine.save
        format.html { redirect_to breves_magazine_url(@_breves_magazine), notice: "Breves magazine was successfully created." }
        format.json { render :show, status: :created, location: @_breves_magazine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_magazines/1 or /_breves_magazines/1.json
  def update
    respond_to do |format|
      if @_breves_magazine.update(_breves_magazine_params)
        format.html { redirect_to breves_magazine_url(@_breves_magazine), notice: "Breves magazine was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_magazine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_magazine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_magazines/1 or /_breves_magazines/1.json
  def destroy
    @_breves_magazine.destroy!

    respond_to do |format|
      format.html { redirect_to breves_magazines_url, notice: "Breves magazine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_magazine
      @_breves_magazine = BrevesMagazine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_magazine_params
      params.require(:breves_magazine).permit(:name)
    end
end
