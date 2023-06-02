const formulario = document.querySelector("form");
const nome = document.querySelector(".nome");
const email = document.querySelector(".email");


function cadastrar(){
    fetch("http://localhost:8080;cadastrar",
    {
        headers: {
            'Accept': 'application/jason',
            'Content-Type': 'application/json1'
        },
        method: "POST",
        body: JSON.stringify({
            nome: nome.value,
            email: email.value,
        })


    })
        .then(function(res) {console.log(res)})
        .catch(function(res) {console.log(res)})

};

function limpar(){
    nome.value = "";
    email.value = "";
};


formulario.addEventListener('submit', function (event){
    event.preventDefault();

    cadastrar();
    limpar();

    const dados = {
        nome: nome.value,
        email: email.value,
    }

    console.log(dados);


});