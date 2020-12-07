var contador = 0;

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

function showComponents(){
    var params = new URLSearchParams(location.search);
    var id = params.get("id");

    var first = document.getElementById("firstSection");
    var second = document.getElementById('secondSection');
    var third = document.getElementById('thirdSection');
    var fourth = document.getElementById('fourthSection');
    var fifth = document.getElementById('fifthSection');

    if(id === "1") first.classList.remove("hidden");
    if(id === "2") second.classList.remove('hidden');
    if(id === "3") third.classList.remove('hidden');
    if(id === "4") fourth.classList.remove('hidden');
    if(id === "5") fifth.classList.remove('hidden');
}

function showWorkData(){
    var element = document.getElementById("workplace_div");
    var select = document.getElementById("workSelect");

    if(select.value === "si"){
        element.classList.remove('hidden');
        element.classList.add('flex', 'flex-col');
    }else{
        element.classList.add('hidden');
        element.classList.remove('flex', 'flex-col');
    }
}

function showTables(id){
    var first = document.getElementById("tablaEstudiantes");
    var second = document.getElementById("tablaProfesores");
    var third = document.getElementById("tablaCursos");
    var fourth = document.getElementById("tablaTipos");

    if(id === "btnAlumnos") {
        first.classList.remove("hidden");
        first.classList.add("block");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
        fourth.classList.add("hidden");
        fourth.classList.remove("flex", "flex-col");
    }

    if(id === "btnProfesores"){
        first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.remove("hidden");
        second.classList.add("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
        fourth.classList.add("hidden");
        fourth.classList.remove("flex", "flex-col");
    }

    if(id === "btnCursos"){
        first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.remove("hidden");
        third.classList.add("flex", "flex-col");
        fourth.classList.add("hidden");
        fourth.classList.remove("flex", "flex-col");
    }

    if(id === "btnTipo"){
        first.classList.add("hidden");
        first.classList.remove("flex", "flex-col");
        second.classList.add("hidden");
        second.classList.remove("flex", "flex-col");
        third.classList.add("hidden");
        third.classList.remove("flex", "flex-col");
        fourth.classList.remove("hidden");
        fourth.classList.add("flex", "flex-col");
    }
}