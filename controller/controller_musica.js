/**
 *  Objetivo: Arquivo responsável pela validação, consistência de dados das requisições referentes as musicas da API do TXT.
 * Data: 11/3/24
 * Autor: Nathalia Kawakami
 * Versão: 1.0
 */

//Import o arquivo DAO que fará a comunicação com o banco de dados.
const musicaDAO = require('../model/DAO/musica.js')

//Import o arquivo config do projeto.
const message = require('../module/config.js')

