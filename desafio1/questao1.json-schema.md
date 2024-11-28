
# Questão 1: Descreva o esquema JSON

O arquivo JSON segue o seguinte esquema:

Objeto Raiz:
curUTC (string): Data e hora no formato UTC.  
locRef (string): Identificador da localização.  
guestChecks (array de objetos): Lista de pedidos realizados.  
Estrutura do guestChecks

Campos principais:  
guestCheckId (int): Identificador único do pedido.  
chkNum (int): Número do pedido.  
opnBusDt (string): Data de abertura do pedido.  
opnUTC, opnLcl, clsdUTC, clsdLcl (string): Datas de abertura e fechamento em UTC e horário local.  
clsdFlag (boolean): Indica se o pedido foi fechado.  
gstCnt (int): Contagem de convidados.  
subTtl, chkTtl, payTtl (float): Valores relacionados ao subtotal, total e pagamento.  

Taxas:  
taxes (array de objetos):  
taxNum (int): Identificador da taxa.  
txblSlsTtl (float): Total de vendas tributáveis.  
taxCollTtl (float): Total de imposto coletado.  
Estrutura do detailLines  

Campos principais:  
guestCheckLineItemId (int): Identificador único do item.  
lineNum (int): Número da linha.  
menuItem (objeto): Detalhes do item do menu.  
miNum (int): Identificador do item.  
inclTax (float): Imposto incluído.  
prcLvl (int): Nível de preço.  
  
