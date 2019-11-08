<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="estilos_login.css">
</head>

<body>

    <div class="row">
        <div class="login">

            <h2>Acesse com Usuário e Senha:
            </h2>
            <form action="autentica_login.php" method="post">
                <br>
                <center>
                    <p> <br><input type="usuario" name="usuario" id="usuario" value="Usuário" onfocus="this.value=''" required></p>
                    <br>
                    <p> <br><input type="password" name="senha" id="senha" value="*****" onfocus="this.value=''" required></p>
                    <br>

                    <input type="submit" value="ACESSAR">
                </center>
            </form>

            <br>
            <center>
                <a href="cadastro.php">Cadastrar usuário</a>
            </center>
</body>

</html>
