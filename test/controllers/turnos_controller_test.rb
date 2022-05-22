# frozen_string_literal: true

require 'test_helper'

class TurnosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @turno = turnos(:one)
  end

  test 'should get index' do
    get turnos_url
    assert_response :success
  end

  test 'should get new' do
    get new_turno_url
    assert_response :success
  end

  test 'should create turno' do
    assert_difference('Turno.count') do
      post turnos_url,
           params: { turno: { descripcion: @turno.descripcion, destino: @turno.destino, direccion_salida: @turno.direccion_salida,
                              fecha_salida: @turno.fecha_salida, hora_salida: @turno.hora_salida, numero_personas: @turno.numero_personas, numero_turno: @turno.numero_turno, tipo: @turno.tipo, vacantes_libres: @turno.vacantes_libres } }
    end

    assert_redirected_to turno_url(Turno.last)
  end

  test 'should show turno' do
    get turno_url(@turno)
    assert_response :success
  end

  test 'should get edit' do
    get edit_turno_url(@turno)
    assert_response :success
  end

  test 'should update turno' do
    patch turno_url(@turno),
          params: { turno: { descripcion: @turno.descripcion, destino: @turno.destino, direccion_salida: @turno.direccion_salida,
                             fecha_salida: @turno.fecha_salida, hora_salida: @turno.hora_salida, numero_personas: @turno.numero_personas, numero_turno: @turno.numero_turno, tipo: @turno.tipo, vacantes_libres: @turno.vacantes_libres } }
    assert_redirected_to turno_url(@turno)
  end

  test 'should destroy turno' do
    assert_difference('Turno.count', -1) do
      delete turno_url(@turno)
    end

    assert_redirected_to turnos_url
  end
end
