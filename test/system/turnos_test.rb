require "application_system_test_case"

class TurnosTest < ApplicationSystemTestCase
  setup do
    @turno = turnos(:one)
  end

  test "visiting the index" do
    visit turnos_url
    assert_selector "h1", text: "Turnos"
  end

  test "creating a Turno" do
    visit turnos_url
    click_on "New Turno"

    fill_in "Descripcion", with: @turno.descripcion
    fill_in "Destino", with: @turno.destino
    fill_in "Direccion salida", with: @turno.direccion_salida
    fill_in "Fecha salida", with: @turno.fecha_salida
    fill_in "Hora salida", with: @turno.hora_salida
    fill_in "Numero personas", with: @turno.numero_personas
    fill_in "Numero turno", with: @turno.numero_turno
    fill_in "Tipo", with: @turno.tipo
    fill_in "Vacantes libres", with: @turno.vacantes_libres
    click_on "Create Turno"

    assert_text "Turno was successfully created"
    click_on "Back"
  end

  test "updating a Turno" do
    visit turnos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @turno.descripcion
    fill_in "Destino", with: @turno.destino
    fill_in "Direccion salida", with: @turno.direccion_salida
    fill_in "Fecha salida", with: @turno.fecha_salida
    fill_in "Hora salida", with: @turno.hora_salida
    fill_in "Numero personas", with: @turno.numero_personas
    fill_in "Numero turno", with: @turno.numero_turno
    fill_in "Tipo", with: @turno.tipo
    fill_in "Vacantes libres", with: @turno.vacantes_libres
    click_on "Update Turno"

    assert_text "Turno was successfully updated"
    click_on "Back"
  end

  test "destroying a Turno" do
    visit turnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Turno was successfully destroyed"
  end
end
