<?php
// Configurações de criptografia para proteção de dados sensíveis (LGPD)
define('CHAVE_CRIPTOGRAFIA', 'AprimorAI_ChaveDeCodificacao_2026!');
define('METODO_CRIPTOGRAFIA', 'AES-256-CBC');

// Função para criptografar dados antes de gravar no banco de dados
function criptografarDados($dado) {
    if (empty($dado)) return $dado;
    $chave = hash('sha256', CHAVE_CRIPTOGRAFIA, true);
    $iv = substr(hash('sha256', 'iv_aprimorai_salt'), 0, 16);
    return openssl_encrypt($dado, METODO_CRIPTOGRAFIA, $chave, 0, $iv);
}

// Função para descriptografar dados gravados no banco
function descriptografarDados($dado) {
    if (empty($dado)) return $dado;
    $chave = hash('sha256', CHAVE_CRIPTOGRAFIA, true);
    $iv = substr(hash('sha256', 'iv_aprimorai_salt'), 0, 16);
    return openssl_decrypt($dado, METODO_CRIPTOGRAFIA, $chave, 0, $iv);
}

// Função para mascarar o CPF na exibição em tabelas
function mascararCPF($cpf) {
    $n = preg_replace('/\D/', '', $cpf);
    return (strlen($n) === 11) ? '***.' . substr($n, 3, 3) . '.' . substr($n, 6, 3) . '-**' : '***.***.***-**';
}