class FicheUniversLnsController < ApplicationController
  before_action :set__fiche_univers_ln, only: %i[ show edit update destroy ]

  # GET /_fiche_univers_lns or /_fiche_univers_lns.json
  def index
    @_fiche_univers_lns = FicheUniversLn.all
  end

  # GET /_fiche_univers_lns/1 or /_fiche_univers_lns/1.json
  def show
  end

  # GET /_fiche_univers_lns/new
  def new
    @_fiche_univers_ln = FicheUniversLn.new
  end

  # GET /_fiche_univers_lns/1/edit
  def edit
  end

  # POST /_fiche_univers_lns or /_fiche_univers_lns.json
  def create
    @_fiche_univers_ln = FicheUniversLn.new(_fiche_univers_ln_params)

    respond_to do |format|
      if @_fiche_univers_ln.save
        format.html { redirect_to _fiche_univers_ln_url(@_fiche_univers_ln), notice: "Fiche univers ln was successfully created." }
        format.json { render :show, status: :created, location: @_fiche_univers_ln }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_fiche_univers_lns/1 or /_fiche_univers_lns/1.json
  def update
    respond_to do |format|
      if @_fiche_univers_ln.update(_fiche_univers_ln_params)
        format.html { redirect_to _fiche_univers_ln_url(@_fiche_univers_ln), notice: "Fiche univers ln was successfully updated." }
        format.json { render :show, status: :ok, location: @_fiche_univers_ln }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_fiche_univers_ln.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_fiche_univers_lns/1 or /_fiche_univers_lns/1.json
  def destroy
    @_fiche_univers_ln.destroy!

    respond_to do |format|
      format.html { redirect_to _fiche_univers_lns_url, notice: "Fiche univers ln was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__fiche_univers_ln
      @_fiche_univers_ln = FicheUniversLn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _fiche_univers_ln_params
      params.require(:_fiche_univers_ln).permit(:name)
    end
end
