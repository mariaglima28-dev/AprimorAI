const radios = document.querySelectorAll('input[name="perfil"]');
const pergunta = document.querySelectorAll(".pergunta");

function verificarPerfil() {

    const selecionado = document.querySelector('input[name="perfil"]:checked');

    if (!selecionado) return;

    pergunta.forEach(div => div.style.display = "none");

    const div = document.getElementById("pergunta" + selecionado.value);

    if (div) {
        div.style.display = "block";
    }
}

radios.forEach(radio =>
    radio.addEventListener("change", verificarPerfil)
);

verificarPerfil();

function handleCredentialResponse(response) {

    const token = response.credential;

    fetch("loginGoogle.php", {

        method: "POST",

        headers: {
            "Content-Type": "application/json"
        },

        body: JSON.stringify({
            token: token
        })

    })
    .then(res => res.json())
    .then(dados => {

        if (dados.sucesso) {

            window.location = "index.php";

        } else {

            alert("Erro ao fazer login.");

        }

    });

}