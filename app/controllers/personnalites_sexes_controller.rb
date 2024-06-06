class PersonnalitesSexesController < ApplicationController
  before_action :set__personnalites_sex, only: %i[ show edit update destroy ]

  # GET /_personnalites_sexes or /_personnalites_sexes.json
  def index
    @_personnalites_sexes = PersonnalitesSexe.all
  end

  # GET /_personnalites_sexes/1 or /_personnalites_sexes/1.json
  def show
  end

  # GET /_personnalites_sexes/new
  def new
    @_personnalites_sex = PersonnalitesSexe.new
  end

  # GET /_personnalites_sexes/1/edit
  def edit
  end

  # POST /_personnalites_sexes or /_personnalites_sexes.json
  def create
    @_personnalites_sex = PersonnalitesSexe.new(_personnalites_sex_params)

    respond_to do |format|
      if @_personnalites_sex.save
        format.html { redirect_to personnalites_sex_url(@_personnalites_sex), notice: "Personnalites sexe was successfully created." }
        format.json { render :show, status: :created, location: @_personnalites_sex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @_personnalites_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /_personnalites_sexes/1 or /_personnalites_sexes/1.json
  def update
    respond_to do |format|
      if @_personnalites_sex.update(_personnalites_sex_params)
        format.html { redirect_to personnalites_sex_url(@_personnalites_sex), notice: "Personnalites sexe was successfully updated." }
        format.json { render :show, status: :ok, location: @_personnalites_sex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @_personnalites_sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /_personnalites_sexes/1 or /_personnalites_sexes/1.json
  def destroy
    @_personnalites_sex.destroy!

    respond_to do |format|
      format.html { redirect_to personnalites_sexes_url, notice: "Personnalites sexe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set__personnalites_sex
      @_personnalites_sex = PersonnalitesSexe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def _personnalites_sex_params
      params.require(:personnalites_sex).permit(:name)
    end
end
