<?php
    if(isset($_SESSION["nome_usuario"])){
        $nome_usuario = $_SESSION["nome_usuario"];
    }
    if(isset($_SESSION["senha_usuario"])){
        $senha_usuario = $_SESSION["senha_usuario"];
    }
    if(!(empty($nome_usuario) OR empty($senha_usuario))){
        include "conecta_bd.inc";
        $query = ("select * from usuarios where nome_usuario = '$nome_usuario'");
        $resultado = mysqli_query($conexao,$query);
        
        if(mysqli_num_rows($resultado) == 1){
            while($row = mysqli_fetch_array($resultado)){
                $res_senha = $row["senha"];
            }
            if($senha_usuario != $res_senha){
                unset($_SESSION["senha_usuario"]);
                unset($_SESSION["senha_usuario"]);
                echo "Você não efetuou o login!";
                echo "<p><a href='login.php'>Logar<\a><\p>";
                exit;
            }
        }else{
            setcookie("nome_usuario");
            setcookie("senha_usuario");
            echo "Você não efetuou o login!";
            echo "<p><a href='login.php'>Logar<\a><\p>";
            exit;
        }
    }else{
        echo "Você não efetuou o login!";
        echo "<p><a href='login.php'>Logar<\a><\p>";
        exit;
    }
?>