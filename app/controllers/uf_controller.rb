class UfController < ActionController::API
  def respuesta
    fecha_solicitada = params[:date]
    uf = Uf.find_by(fecha: fecha_solicitada)
    if uf.nil?
      respuesta = "Valor no encontrado para esa fecha"  
    else
      respuesta = {fecha_solicitada: fecha_solicitada, value: uf.value}
    end

    User.create(user_name: params["x-client"], uf_value: respuesta, date_request: fecha_solicitada)


    render json: respuesta

  end

  def requestq

    request = User.where(user_name: params[:user_name])
    if request.nil?
      q = 0
    else
      q = request.count
    end

    render json: q
    
  end

  
end
