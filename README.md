<h1>PsiqueSis - Sistema gerenciador para clínica de psicologia</h1>
<p>Segundo trabalho interdisciplinar desenvolvido no curso ADS na instituição IFSP para Dra. Fernanda A. Forti com fim acadêmico.</p>
<hr>
<h2>Resumo projeto</h2>
<p>A utilização de um sistema da informação em uma Clínica de Psicologia pode automatizar, melhorar e tornar mais eficiente e dinâmico o controle do atendimento aos clientes. Dado que, todo o gerenciamento das consultas será controlado a partir do sistema. A busca e controle das informações dos pacientes serão aprimorados também, visto que, a aplicação consegue armazenar os dados, além de permitir pesquisas e divulgações dos mesmos para os pacientes.</p>
<p>O controle financeiro será contemplado, possibilitando o gerenciamento das dívidas, a visualização dos pagamentos vindo dos pacientes e das empresas que terceirizam a clínica.</p>
<p>Por fim, a clínica possuirá um website, no qual haverá informações de divulgação e o controle dos próprios pacientes sobre suas consultas, possibilitando averiguações de horários e solicitações de agendamentos.
</p>
<hr>
<h2>Critérios de aceitação</h2>
<ul>
   <li>Java</li>
    <ul>
        <li>Desenvolvimento em arquitetura MVC;</li>
        <li>Utilização de sockets;</li>
        <li>Utilização de padrões de projetos;</li>
        <li>Documentação em JavaDoc.</li>
    </ul>
    <li>WEB</li>
    <ul>
        <li>Registrar domínio e fazer upload do site;</li>
        <li>Pelo menos uma página em 3 idiomas, gerenciando via file inputs;</li>
        <li>Utilização de Cookies para idioma e paleta de cor;</li>
        <li>Anti-injection em dados.</li>
    </ul>
</ul>
<hr>
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
<hr>
<h2>Usuários para testes</h2>
<table style="text-align: left">
    <thead>
        <tr>
            <th>Usuário</th>
            <th>Senha</th>
            <th>Nível</th>
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
