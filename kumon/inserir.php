<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Inserir no BD</title>
</head>

<body>
    <?php
    $nome = $_POST["nome"];
    $usuario = $_POST["usuario"];
    $email = $_POST["email"];
    $senha = $_POST["senha"];
    $funcao = $_POST["funcao"];
    $erro = 0;

    if(empty($nome)){
        echo "O campo nome é de preenchimento obrigatório!";
        $erro = 1;
    }
    if(empty($usuario)){
        echo "O campo usuario é de preenchimento obrigatório!";
        $erro = 1;
    }
    if(empty($email)){
        echo "O campo email é de preenchimento obrigatório!";
        $erro = 1;
    }
    if(empty($senha)){
        echo "O campo senha é de preenchimento obrigatório!";
        $erro = 1;
    }
    if(empty($funcao)){
        echo "O campo funcao é de preenchimento obrigatório!";
        $erro = 1;
    }
    
    if($erro == 0){
        //insere os dados no banco
        $conexao = mysqli_connect("localhost","root","","bd_kumon");
        //Verifica se houve erros de conexão
        if(mysqli_connect_errno($conexao)){
            echo "Problemas para conectar no banco. Erro: ";
            //Retorna o texto explicando o que aconteceu de errado
            echo mysqli_connect_error();
            //Encerra o programa
            die();
        }
        
        //String para inserir no banco
        $query = "insert into usuarios values('".$nome."','".$usuario."', '".$email."', '".$senha."', '".$funcao."')";
        
        //Retorna o resultado
        $resultado = mysqli_query($conexao,$query);
        
        if($resultado){
            echo "<center>Cadastro inserido com sucesso!</center>";
        }else{
            echo "<center>Erro ao inserir os dados!<center>";
        }
        
        //Fecha a conexão com o banco 
        mysqli_close($conexao);
    }
    ?>
    <a href="login.php">
        <h1>Fazer login</h1>
    </a>
    <a href="cadastro.php">
        <h1>Voltar</h1>
    </a>
</body>

</html>
