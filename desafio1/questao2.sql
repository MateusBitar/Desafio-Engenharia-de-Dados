-- =====================================================
-- TÍTULO: CRIAÇÃO DAS TABELAS
-- =====================================================
-- Criação da tabela 'guest_checks'
CREATE TABLE guest_checks (
    guestCheckId BIGINT PRIMARY KEY,
    chkNum INT,
    opnBusDt DATE,
    opnUTC DATETIME,
    clsdUTC DATETIME,
    clsdFlag BOOLEAN,
    gstCnt INT,
    subTtl FLOAT,
    chkTtl FLOAT,
    payTtl FLOAT,
    locRef VARCHAR(50)
);

-- Criação da tabela 'detail_lines'
CREATE TABLE detail_lines (
    guestCheckLineItemId BIGINT PRIMARY KEY,
    guestCheckId BIGINT,
    lineNum INT,
    menuItemNum INT,
    inclTax FLOAT,
    prcLvl INT,
    FOREIGN KEY (guestCheckId) REFERENCES guest_checks(guestCheckId)
);

-- Criação da tabela 'taxes'
CREATE TABLE taxes (
    taxNum INT,
    guestCheckId BIGINT,
    txblSlsTtl FLOAT,
    taxCollTtl FLOAT,
    FOREIGN KEY (guestCheckId) REFERENCES guest_checks(guestCheckId)
);

