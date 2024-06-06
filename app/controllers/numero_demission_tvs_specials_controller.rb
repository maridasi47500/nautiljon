class NumeroDemissionTvsSpecialsController < ApplicationController
  before_action :set__numero_demission_tvs_special, only: %i[ show edit update destroy ]

  # GET /_numero_demission_tvs_specials or /_numero_demission_tvs_specials.json
  def index
    @_numero_demission_tvs_specials = NumeroDemissionTvsSpecial.all
  end

  # GET /_numero_demission_tvs_specials/1 or /_numero_demission_tvs_specials/1.json
  def show
  end

  # GET /_numero_demission_tvs_specials/new
  def new
    @_numero_demission_tvs_special = NumeroDemissionTvsSpecial.new
  end

  # GET /_numero_demission_tvs_specials/1/edit
  def edit
  end

  # POST /_numero_demission_tvs_specials or /_numero_demission_tvs_specials.json
  def create
    @_numero_demission_tvs_special = NumeroDemissionTvsSpecial.new(_numero_demission_tvs_special_params)

    respond_to do |format|
      if @_numero_demission_tvs_special.save
        format.html { redirect_to numero_demission_tvs_special_url(@_numero_demission_tvs_special), notice: "Numero demission tvs special was successfully created." }
        format.json { render :show, status: :created, location: @_numero_demission_tvs_special }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_numero_demission_tvs_specials/1 or /_numero_demission_tvs_specials/1.json
  def update
    respond_to do |format|
      if @_numero_demission_tvs_special.update(_numero_demission_tvs_special_params)
        format.html { redirect_to numero_demission_tvs_special_url(@_numero_demission_tvs_special), notice: "Numero demission tvs special was successfully updated." }
        format.json { render :show, status: :ok, location: @_numero_demission_tvs_special }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_numero_demission_tvs_special.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_numero_demission_tvs_specials/1 or /_numero_demission_tvs_specials/1.json
  def destroy
    @_numero_demission_tvs_special.destroy!

    respond_to do |format|
      format.html { redirect_to numero_demission_tvs_specials_url, notice: "Numero demission tvs special was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__numero_demission_tvs_special
      @_numero_demission_tvs_special = NumeroDemissionTvsSpecial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _numero_demission_tvs_special_params
      params.require(:numero_demission_tvs_special).permit(:name)
    end
end
