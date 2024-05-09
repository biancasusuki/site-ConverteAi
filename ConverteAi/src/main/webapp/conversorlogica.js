
const hex_code = {
    0: "0",
    1: "1",
    2: "2",
    3: "3",
    4: "4",
    5: "5",
    6: "6",
    7: "7",
    8: "8",
    9: "9",
    10: "A",
    11: "B",
    12: "C",
    13: "D",
    14: "E",
    15: "F"
}

function decimal_para_binario(decimal) {
    let convertido = ""
    while (decimal != 1) {
        convertido += String(decimal % 2)
        decimal = Math.floor(decimal / 2)
    }
    convertido += "1"
    return convertido.split("").reverse().join("")
}


function decimal_para_octal(decimal) {
    let convertido = ""
    while (decimal > 8) {
        convertido += String(decimal % 8)
        decimal = Math.floor(decimal / 8)
    }
    convertido += String(decimal)
    return convertido.split("").reverse().join("")

}


function decimal_para_hexadecimal(decimal) {
    let convertido = ""

    while (decimal >= 16) {
        convertido += hex_code[decimal % 16]
        decimal = Math.floor(decimal / 16)
    }
    convertido += hex_code[decimal]
    return convertido.split("").reverse().join("")

}

const botao = document.getElementById("converter")

botao.addEventListener("click", calcular)

function calcular() {
    const entrada = document.querySelector(".entrada").value
    if (entrada <= 0) {
        alert("Informe uma número maior que 0 ")
        return
    }
    document.querySelector(".resultadoBinario").innerText = decimal_para_binario(entrada)
    document.querySelector(".resultadoHexa").innerText = "#" + decimal_para_hexadecimal(entrada)
    document.querySelector(".resultadoOctal").innerText = decimal_para_octal(entrada)

}