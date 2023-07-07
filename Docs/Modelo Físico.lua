// Derek Pascuinelli - RM : 98042
 
Tabela: Usuário
- ID: INT (chave primária)
- Nome: VARCHAR(50) (obrigatório)
- Email: VARCHAR(100) (obrigatório)
- Senha: VARCHAR(20) (obrigatório)

Tabela: ContaBancaria
- ID: INT (chave primária)
- IDUsuario: INT (chave estrangeira referenciando Usuário.ID) (obrigatório)
- NomeConta: VARCHAR(50) (obrigatório)
- Banco: VARCHAR(50) (obrigatório)
- Saldo: DECIMAL(10,2) (obrigatório)

Tabela: Transacao
- ID: INT (chave primária)
- IDContaBancaria: INT (chave estrangeira referenciando ContaBancaria.ID) (obrigatório)
- Tipo: VARCHAR(10) (obrigatório)
- Valor: DECIMAL(10,2) (obrigatório)
- Data: DATE (obrigatório)
- Descricao: VARCHAR(100)

Tabela: Categoria
- ID: INT (chave primária)
- Nome: VARCHAR(50) (obrigatório)

Tabela: MetaFinanceira
- ID: INT (chave primária)
- IDUsuario: INT (chave estrangeira referenciando Usuário.ID) (obrigatório)
- Nome: VARCHAR(50) (obrigatório)
- ValorAlvo: DECIMAL(10,2) (obrigatório)
- DataLimite: DATE (obrigatório)

Tabela: Investimento
- ID: INT (chave primária)
- IDUsuario: INT (chave estrangeira referenciando Usuário.ID) (obrigatório)
- Nome: VARCHAR(50) (obrigatório)
- Tipo: VARCHAR(50) (obrigatório)
- ValorInvestido: DECIMAL(10,2) (obrigatório)
- ValorAtual: DECIMAL(10,2) (opcional)
- DataInicio: DATE (obrigatório)
- DataTermino: DATE

Tabela: ImpostoRenda
- ID: INT (chave primária)
- IDUsuario: INT (chave estrangeira referenciando Usuário.ID) (obrigatório)
- Ano: INT (obrigatório)
- ValorDevido: DECIMAL(10,2) (obrigatório)
