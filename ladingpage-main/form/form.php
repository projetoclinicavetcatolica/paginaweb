<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <main>
        <?php 
        session_start();
        $nome = $_POST["nome"] ?? 0;
        $telefone = $_POST["telefone"] ?? 0;
        $email = $_POST["email"] ?? 0;
        $cpf = $_POST["cpf"] ?? 0;
        $nomeAnimal = $_POST["nomeAnimal"] ?? 0;
        $especie = $_POST["especie"] ?? 0;
        $data = $_POST["data"] ?? 0;

            include_once("conexao.php");

            //created
            //modifed
        
        $result_formularioagendamento = "INSERT INTO formularioagendamento (nome,telefone,email,cpf,nomeAnimal,especie,data,created) VALUES ('$nome','telefone','email','$cpf','$nomeAnimal','$especie','$data',NOW())";

        $resultado_formularioagendamento = mysqli_query($conn, $result_formularioagendamento);

        if(mysqli_insert_id($conn)){
            header("Location: index.html");
        }else{
            header("Location: index.html");
        }



        ?>

    </main>
</body>
</html>