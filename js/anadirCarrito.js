document.querySelectorAll('.btn-carrito').forEach(element => {
    element.addEventListener('click', (e) => {
        let precio = e.target.parentNode.querySelector("#precioProducto").textContent;
        let img = e.target.parentNode.querySelector(".img-hover").src;
        let nombre = e.target.parentNode.querySelector("#nombreProducto").textContent;
        let simbolo = "€";
        let precioTotal = "255";


        let lateral = document.querySelector(".offcanvas-body");
        let texto = `<div class="container col-12">
        <div class="row">
            <div class="col-lg-1 col-md-xs"></div>
            <div class="col-lg-4 col-md-xs">
                <p>${nombre}${precio}${simbolo}</p>
            </div>
            <div class="col-lg-2 col-md-xs"><img width="100%" src="${img}" class="img-hover">
            </div>
        </div>
    </div>
    <div class="offcanvas-body px-0">
                            <hr style="width: 80%; margin-left: 10%;">
                            <div class="container col-12">
                                <div class="row">
                                    <div class="col-lg-4 col-12-xs"><button class="botonMenuCarrito">Vaciar Carrito <i class="fas fa-cart-arrow-down"></i></button></div>
                                    <div class="col-lg-4 col-12-xs">Precio total = ${precioTotal}${simbolo}</div>
                                    <div class="col-lg-4 col-12-xs"><button class="botonMenuCarrito">Confirmar <i class="fas fa-paper-plane"></i></button></div>
                                </div>
                            </div>
                        </div>`
        lateral.innerHTML = texto;
        // Mostramos la informacion del que clickamos, tenemos que meter en un array al que clickamos cuando hagamos el array, hay que pintar el array entero, mirar si existe o no cantidad*precio
    });
});;