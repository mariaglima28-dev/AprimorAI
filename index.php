<?php

session_start();

require_once 'config/db_connect.php';

$erro = ""; 

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
    $senha_digitada = $_POST['senha'];

    $sql = "SELECT id, nome, senha, tipo_user FROM usuarios WHERE email = ?";
    
    if ($stmt = mysqli_prepare($conn, $sql)) {
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);
        $resultado = mysqli_stmt_get_result($stmt);

        if ($row = mysqli_fetch_assoc($resultado)) {
            
            if (password_verify($senha_digitada, $row['senha'])) {

                $_SESSION['logado'] = true;
                $_SESSION['user_id'] = $row['id'];
                $_SESSION['user_nome'] = $row['nome'];
                $_SESSION['user_tipo'] = $row['tipo_user'];

                header("Location: painel.php");
                exit();
                
            } else {
                
                $erro = "E-mail ou senha incorretos.";
            }
        } else {
            
            $erro = "E-mail ou senha incorretos.";
        }
        mysqli_stmt_close($stmt);
    } else {
        $erro = "Erro de conexão com o banco de dados.";
    }
} 
?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Acesso Profissional</title>
    <link rel="stylesheet" href="assets/css/style.css">
    <script src="https://google.com" async defer></script>
</head>
<body>

    <img src="assets/img/Qualificação TCC.svg" class="bg-canvas">
    <main class="main-workspace">
        <div class="auth-card">
            <div class="card-header">
                <h2>Bem-vindo(a)</h2>
                <p>Insira suas credenciais para acessar o sistema.</p>
            </div>

            <?php if (!empty($erro)): ?>
                <div class="alert-error">
                    <?php echo $erro; ?>
                </div>
            <?php endif; ?>

            <form action="" method="POST">
                
                <div class="input-group">
                    <label  class='label-row' for="email">E-mail Corporativo</label>
                    <input type="email" id="email" name="email" placeholder="nome@instituicao.com" value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : ''; ?>" required>
                    <label  class='label-row' for="senha">Senha</label>
                    <input type="password" id="senha" name="senha" placeholder="••••••••" required>
                    <a href="#" class="forgot-link">Esqueceu a senha?</a>
                </div>
                
                <button type="submit" class="btn-submit">Entrar</button><br><br>
                <div id="g_id_onload" data-client_id="949242625796-3tqep1q9beie1cn0ivjd32i7o7isb6kn.apps.googleusercontent.com" data-callback="handleCredentialResponse"></div>
                <div class="g_id_signin" data-type="standard"></div>
            </form>
        </div>
    </main>
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</body>
</html>