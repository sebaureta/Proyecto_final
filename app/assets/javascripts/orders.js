$("#alert").on("click",function(){
swal({
  title: "Estás seguro?",
  text: "Si lo borras, puedas agregarlo nuevamente en la lista de productos !",
  icon: "warning",
  buttons: true,
  dangerMode: true,
})
.then((willDelete) => {
  if (willDelete) {
    swal("Boom! EL producto fue eliminado del carro!", {
      icon: "success",
    });
  } else {
    swal("Tu producto continúa en el carro!");
  }
});
});
