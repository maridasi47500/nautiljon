class BrevesLivreJeunessesController < ApplicationController
  before_action :set__breves_livre_jeuness, only: %i[ show edit update destroy ]

  # GET /_breves_livre_jeunesses or /_breves_livre_jeunesses.json
  def index
    @_breves_livre_jeunesses = BrevesLivreJeunesse.all
  end

  # GET /_breves_livre_jeunesses/1 or /_breves_livre_jeunesses/1.json
  def show
  end

  # GET /_breves_livre_jeunesses/new
  def new
    @_breves_livre_jeuness = BrevesLivreJeunesse.new
  end

  # GET /_breves_livre_jeunesses/1/edit
  def edit
  end

  # POST /_breves_livre_jeunesses or /_breves_livre_jeunesses.json
  def create
    @_breves_livre_jeuness = BrevesLivreJeunesse.new(_breves_livre_jeuness_params)

    respond_to do |format|
      if @_breves_livre_jeuness.save
        format.html { redirect_to _breves_livre_jeuness_url(@_breves_livre_jeuness), notice: "Breves livre jeunesse was successfully created." }
        format.json { render :show, status: :created, location: @_breves_livre_jeuness }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_breves_livre_jeuness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_breves_livre_jeunesses/1 or /_breves_livre_jeunesses/1.json
  def update
    respond_to do |format|
      if @_breves_livre_jeuness.update(_breves_livre_jeuness_params)
        format.html { redirect_to _breves_livre_jeuness_url(@_breves_livre_jeuness), notice: "Breves livre jeunesse was successfully updated." }
        format.json { render :show, status: :ok, location: @_breves_livre_jeuness }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_breves_livre_jeuness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_breves_livre_jeunesses/1 or /_breves_livre_jeunesses/1.json
  def destroy
    @_breves_livre_jeuness.destroy!

    respond_to do |format|
      format.html { redirect_to _breves_livre_jeunesses_url, notice: "Breves livre jeunesse was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__breves_livre_jeuness
      @_breves_livre_jeuness = BrevesLivreJeunesse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _breves_livre_jeuness_params
      params.require(:_breves_livre_jeuness).permit(:name)
    end
end
