class TurnosController < ApplicationController
  def index
    @turnos = Turno.all
  end

  def new
    @turno = Turno.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
