## **Questão 3: Alteração de guestChecks.taxes para guestChecks.taxation**

**Impactos:**

* Alterações no schema requerem ajuste no pipeline ETL.
* Processos dependentes do campo antigo podem falhar.
  
**Solução:**

1. Esquemas dinâmicos: Utilize leitura baseada em schema-on-read para evitar que mudanças afetem pipelines existentes.
2. Teste e validação: Garanta que mudanças sejam detectadas antes de impactar o ambiente de produção.
