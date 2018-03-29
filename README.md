<h1>PsiqueSis - Sistema gerenciador para clínica de psicologia</h1>
<p>Segundo trabalho interdisciplinar desenvolvido no curso ADS na instituição IFSP para Dra. Fernanda A. Forti com fim acadêmico. O projeto foi desenvolvido em duas aplicações, sendo um desktop utilizando linguagem Java e outro Web com as funcionalidades de gerenciar consultas.</p>
<h2>Erros</h2>
<ul>
    <li>Compilador não encontra caminho para os arquivos JFreeChart.</li>
    <code>Informar localização manualmente no diretório "..\PsiqueSis\jfreechart-1.0.19\jfreechart-1.0.19\lib".</code><br>
    <li>Não conecta com o banco de dados.</li>
    <code>Verificar se as string de conexão em:
    Java: ConaxaoDB\ConexaoDB.java linhas 30, 36 e 41 <br>
    // WEB: conexao.inc.php linha 2 <br>
    estão devidamente preenchida com o banco MySql local</code><br>
</ul>
<h2>Usuários para testes</h2>
<table style="text-align: left">
    <thead>
        <tr>
            <th>Usuário</th>
            <th>Senha</th>
            <th>Nivel</th>
            <th>Descrição</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>admin</td>
            <td>123</td>
            <td>Funcionário</td>
            <td>Consegue enxergar as informações de contatos por agendamento realizado.</td>
        </tr>
        <tr>
            <td>samuel.silva</td>
            <td>123</td>
            <td>Responsável</td>
            <td>Realiza um agendamento online. O psicólogo informado (somente ele) irá receber um alarme sonoro na aplicação desktop quando um novo agendamento for realizado.</td>
        </tr>
        <tr>
            <td>mario.claudio</td>
            <td>123</td>
            <td>Paciente</td>
            <td>Faz consulta dos agendamentos realizados.</td>
        </tr>
    </tbody>
</table>
