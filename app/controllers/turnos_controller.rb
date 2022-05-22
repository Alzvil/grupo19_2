# frozen_string_literal: true

class TurnosController < ApplicationController
  before_action :set_turno, only: %i[show edit update destroy]

  # GET /turnos or /turnos.json
  def index
    @turnos = Turno.all
  end

  # GET /turnos/1 or /turnos/1.json
  def show; end

  # GET /turnos/new
  def new
    @turno = Turno.new
  end

  # GET /turnos/1/edit
  def edit; end

  # POST /turnos or /turnos.json
  def create
    @turno = Turno.new(turno_params)

    respond_to do |format|
      if @turno.save
        format.html { redirect_to turno_url(@turno), notice: 'Turno was successfully created.' }
        format.json { render :show, status: :created, location: @turno }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnos/1 or /turnos/1.json
  def update
    respond_to do |format|
      if @turno.update(turno_params)
        format.html { redirect_to turno_url(@turno), notice: 'Turno was successfully updated.' }
        format.json { render :show, status: :ok, location: @turno }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnos/1 or /turnos/1.json
  def destroy
    @turno.destroy

    respond_to do |format|
      format.html { redirect_to turnos_url, notice: 'Turno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_turno
    @turno = Turno.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def turno_params
    params.require(:turno).permit(:descripcion, :numero_turno, :direccion_salida, :destino, :numero_personas,
                                  :fecha_salida, :hora_salida, :tipo, :vacantes_libres)
  end
end
