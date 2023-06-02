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
            $email = $_POST["email"] ?? 0;

                // echo "Nome: $nome<br>";
                // echo "Email: $email";

                include_once("conexao.php");

                $result_usuario = "INSERT INTO cadastronewsletter (nome, email, created) VALUES ('$nome', '$email', NOW())";

                $resultado_usuario = mysqli_query($conn, $result_usuario);

                if(mysqli_insert_id($conn)){
                    $_SESSION['msg'] = "Usuário cadastrado com sucesso!";
                    header("Location: home.html");
                }else{
                    header("Location: home.html");
                }

                $sql = "SELECT email FROM newsletter.cadastronewsletter WHERE email = '$email'";

                $retorno = mysqli_query($conn,$sql);

                //confirmando se já existe o email
                // if(mysqli_num_rows($retorno)>0){
                //     echo "E-MAIL JÁ CADASTRADO!<br>";
                // }else{
                    
                // }





            ?>

    </main>
    
</body>
</html>