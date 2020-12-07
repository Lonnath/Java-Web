var contador = 0;

function mostrarInputsPeriodosIndependencia(){
    var select = document.getElementById("independenceSelect");
    var divPeriodo = document.getElementById("showPeriodos");

    if(select.value === "si"){
        divPeriodo.classList.remove("hidden");
        divPeriodo.classList.add("flex");
    }else{
        divPeriodo.classList.add("hidden");
        divPeriodo.classList.remove("flex");
    }
}

function showDropdown(){
    contador = contador + 1;
    if(contador % 2 === 0 ){
        document.getElementById("dropdown").classList.remove("flex");
        document.getElementById("dropdown").classList.remove("justify-end");
        document.getElementById("dropdown").classList.add("hidden");
    }else{
        document.getElementById("dropdown").classList.add("flex");
        document.getElementById("dropdown").classList.add("justify-end");
        document.getElementById("dropdown").classList.remove("hidden");
    }
}

function showSection(){
    
    var params = new URLSearchParams(location.search); // Obtener el parámetro de la URL
    var id = params.get("id"); // Extraerlo
    var first = document.getElementById("firstSection");
    var second = document.getElementById("secondSection");
    var third = document.getElementById("thirdSection");

    if(id === "1"){
        first.classList.remove("hidden");
        first.classList.add("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
    }

    if(id === "2"){
        document.getElementById("firstSection").classList.add("hidden");
        document.getElementById("firstSection").classList.remove("flex", "flex-col");
        document.getElementById("secondSection").classList.add("flex", "flex-col");
        document.getElementById("secondSection").classList.remove("hidden");
        document.getElementById("thirdSection").classList.add("hidden");
        document.getElementById("thirdSection").classList.remove("flex", "flex-col");
    }

    if(id === "3"){
        document.getElementById("firstSection").classList.add("hidden");
        document.getElementById("firstSection").classList.remove("flex", "flex-col");
        document.getElementById("secondSection").classList.add("hidden");
        document.getElementById("secondSection").classList.remove("flex", "flex-col");
        document.getElementById("thirdSection").classList.add("flex", "flex-col");
        document.getElementById("thirdSection").classList.remove("hidden");
    }
}


function showTables(id){
    var first = document.getElementById("tableGuerra");
    var second = document.getElementById("tableBando");
    var third = document.getElementById("tablePaises");
    
    if(id == ""){
         first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col"); 
    }
    
    if(id === "btnGuerras") {
        first.classList.remove("hidden");
        first.classList.add("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
    }

    if(id === "btnBandos"){
        first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.remove("hidden");
        second.classList.add("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
    }

    if(id === "btnPaises"){
        first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.remove("hidden");
        third.classList.add("flex", "flex-col");
    }
}