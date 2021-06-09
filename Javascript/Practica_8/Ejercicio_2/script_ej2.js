/* 2- Modificar el programa anterior para que evalué el ingreso de 3 usuarios e indique cuál de ellos es el mayor */

const cant_usuarios = 3; //constante que asigna la cantidad de usuarios a comparar

function usuarioComprobarMayorEdad(){

    let usuarios = new Array(cant_usuarios);
    let i;
    //se carga en un array la informacion de los usuarios
    for (i = 0; i < usuarios.length; i++) {
        
        //creo un array de tipo usuario
        usuarios[i] =  usuario ={

            nombre : prompt("Ingrese el nombre del usuario n°" + (i+1) +":"),
            edad : prompt ("Ingrese la edad del usuario: n°" + (i+1) +":")
        }
        
    }

    //recorre el array verificando cual de todos los usuarios tiene mayor edad
    let edadMax = 0;
    let usuarioMayor = 0;

    for (let i = 0; i < usuarios.length; i++) {
        
        if (parseInt(usuarios[i].edad) > edadMax) {

            usuarioMayor = i;    //guardo la posicion del usuario mayor
            edadMax = parseInt(usuarios[i].edad) //guardo su edad 
        }
        
    }

    alert("El usuario mayor entre los usuarios ingresados es: " + usuarios[usuarioMayor].nombre + " con una edad de " + usuarios[usuarioMayor].edad);

}

usuarioComprobarMayorEdad();