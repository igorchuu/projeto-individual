var database = require("../database/config");

function buscarUltimasMedidas(limite_linhas) {

    var instrucaoSql = `select nomeUsuario, acertos, erros from usuario join quiz on idUsuario = fkUsuario ORDER BY idQuiz DESC LIMIT ${limite_linhas}`;

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

module.exports = {
    buscarUltimasMedidas,
}
