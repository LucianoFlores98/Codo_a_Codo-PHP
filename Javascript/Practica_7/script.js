function calcularPromedio(valor1,valor2, valor3) {
    
    let promedio = (parseFloat(valor1) + parseFloat(valor2) + parseFloat(valor3)) / 3;
    return promedio;

}

let nombreAlumno;
let nota1, nota2, nota3;
let valoresAceptados = /^[0-9]+$/;

nombreAlumno = prompt('Por favor ingrese el nombre del alumno:');

do  {
    
    nota1 = prompt('Ingrese la primer nota:');
    nota2 = prompt('Ingrese la segunda nota:');
    nota3 = prompt('Ingrese la tercer nota:');

} while (!(nota1.match(valoresAceptados) && nota2.match(valoresAceptados) && nota3.match(valoresAceptados)))

alert ('El promedio del alumno ' + nombreAlumno + ' es: ' + calcularPromedio(nota1,nota2,nota3));
