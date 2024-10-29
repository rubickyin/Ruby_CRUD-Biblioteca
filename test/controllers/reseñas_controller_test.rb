require "test_helper"

class ReseñasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reseña = reseñas(:one)
  end

  test "should get index" do
    get reseñas_url
    assert_response :success
  end

  test "should get new" do
    get new_reseña_url
    assert_response :success
  end

  test "should create reseña" do
    assert_difference("Reseña.count") do
      post reseñas_url, params: { reseña: { calificacion: @reseña.calificacion, comentario: @reseña.comentario, fecha: @reseña.fecha, libro_id: @reseña.libro_id, usuario_id: @reseña.usuario_id } }
    end

    assert_redirected_to reseña_url(Reseña.last)
  end

  test "should show reseña" do
    get reseña_url(@reseña)
    assert_response :success
  end

  test "should get edit" do
    get edit_reseña_url(@reseña)
    assert_response :success
  end

  test "should update reseña" do
    patch reseña_url(@reseña), params: { reseña: { calificacion: @reseña.calificacion, comentario: @reseña.comentario, fecha: @reseña.fecha, libro_id: @reseña.libro_id, usuario_id: @reseña.usuario_id } }
    assert_redirected_to reseña_url(@reseña)
  end

  test "should destroy reseña" do
    assert_difference("Reseña.count", -1) do
      delete reseña_url(@reseña)
    end

    assert_redirected_to reseñas_url
  end
end
