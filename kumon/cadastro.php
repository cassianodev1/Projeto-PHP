<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Cadastro</title>
</head>

<body>
    <form action="inserir.php" method="post">

        <p>
            <label>
                Nome: <input type="text" name="nome">
            </label>
        </p>

        <p>
            <label>
                Usuário: <input type="text" name="usuario">
            </label>
        </p>
        <p>
            <label>
                E-mail: <input type="text" name="email">
            </label>
        </p>
        <p>
            <label>
                Senha: <input type="password" name="senha">
            </label>
        </p>
        <p>
            <label>
                Função: <select name="funcao">
                    <option value=""></option>
                    <option value="pf">Professor</option>
                    <option value="al">Aluno</option>
                </select>
            </label>

        </p>
        <p>
            <input type="submit" value="Cadastrar Dados">
            <input type="reset" value="Limpar Dados">
        </p>
    </form>
</body>

</html>
