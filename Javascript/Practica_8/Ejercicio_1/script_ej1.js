/* 1- Crear una función que evalué si un usuario es mayor de edad, el resultado deberá mostrarse mediante una ventana (utilizar Alert) */

function esMayorDeEdad(usuario){

    return (parseInt(usuario.edad) >= 18);

}

function usuarioComprobarMayorEdad(){
    let usuario ={

        nombre : prompt("Ingrese el nombre del usuario:"),
        edad : prompt ("Ingrese la edad del usuario:")
    }

    if(esMayorDeEdad(usuario)){

        alert("El usuario " + usuario.nombre + " es mayor de edad")

    }else { 
        alert("El usuario " + usuario.nombre + " NO es mayor de edad")
    }
}

usuarioComprobarMayorEdad();

