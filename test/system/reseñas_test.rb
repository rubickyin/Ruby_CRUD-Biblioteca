require "application_system_test_case"

class ReseñasTest < ApplicationSystemTestCase
  setup do
    @reseña = reseñas(:one)
  end

  test "visiting the index" do
    visit reseñas_url
    assert_selector "h1", text: "Reseñas"
  end

  test "should create reseña" do
    visit reseñas_url
    click_on "New reseña"

    fill_in "Calificacion", with: @reseña.calificacion
    fill_in "Comentario", with: @reseña.comentario
    fill_in "Fecha", with: @reseña.fecha
    fill_in "Libro", with: @reseña.libro_id
    fill_in "Usuario", with: @reseña.usuario_id
    click_on "Create Reseña"

    assert_text "Reseña was successfully created"
    click_on "Back"
  end

  test "should update Reseña" do
    visit reseña_url(@reseña)
    click_on "Edit this reseña", match: :first

    fill_in "Calificacion", with: @reseña.calificacion
    fill_in "Comentario", with: @reseña.comentario
    fill_in "Fecha", with: @reseña.fecha
    fill_in "Libro", with: @reseña.libro_id
    fill_in "Usuario", with: @reseña.usuario_id
    click_on "Update Reseña"

    assert_text "Reseña was successfully updated"
    click_on "Back"
  end

  test "should destroy Reseña" do
    visit reseña_url(@reseña)
    click_on "Destroy this reseña", match: :first

    assert_text "Reseña was successfully destroyed"
  end
end
