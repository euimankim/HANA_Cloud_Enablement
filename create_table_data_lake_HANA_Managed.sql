-- 1 단계 SQL
CALL SYSRDL#CG.REMOTE_EXECUTE ('

CREATE TABLE CATALOG_SALES
(
    CS_SOLD_DATE_SK           INTEGER                       ,
    CS_SOLD_TIME_SK           INTEGER                       ,
    CS_SHIP_DATE_SK           INTEGER                       ,
    CS_BILL_CUSTOMER_SK       INTEGER                       ,
    CS_BILL_CDEMO_SK          INTEGER                       ,
    CS_BILL_HDEMO_SK          INTEGER                       ,
    CS_BILL_ADDR_SK           INTEGER                       ,
    CS_SHIP_CUSTOMER_SK       INTEGER                       ,
    CS_SHIP_CDEMO_SK          INTEGER                       ,
    CS_SHIP_HDEMO_SK          INTEGER                       ,
    CS_SHIP_ADDR_SK           INTEGER                       ,
    CS_CALL_CENTER_SK         INTEGER                       ,
    CS_CATALOG_PAGE_SK        INTEGER                       ,
    CS_SHIP_MODE_SK           INTEGER                       ,
    CS_WAREHOUSE_SK           INTEGER                       ,
    CS_ITEM_SK                INTEGER               NOT NULL,
    CS_PROMO_SK               INTEGER                       ,
    CS_ORDER_NUMBER           INTEGER               NOT NULL,
    CS_QUANTITY               INTEGER                       ,
    CS_WHOLESALE_COST         DECIMAL(7,2)                  ,
    CS_LIST_PRICE             DECIMAL(7,2)                  ,
    CS_SALES_PRICE            DECIMAL(7,2)                  ,
    CS_EXT_DISCOUNT_AMT       DECIMAL(7,2)                  ,
    CS_EXT_SALES_PRICE        DECIMAL(7,2)                  ,
    CS_EXT_WHOLESALE_COST     DECIMAL(7,2)                  ,
    CS_EXT_LIST_PRICE         DECIMAL(7,2)                  ,
    CS_EXT_TAX                DECIMAL(7,2)                  ,
    CS_COUPON_AMT             DECIMAL(7,2)                  ,
    CS_EXT_SHIP_COST          DECIMAL(7,2)                  ,
    CS_NET_PAID               DECIMAL(7,2)                  ,
    CS_NET_PAID_INC_TAX       DECIMAL(7,2)                  ,
    CS_NET_PAID_INC_SHIP      DECIMAL(7,2)                  ,
    CS_NET_PAID_INC_SHIP_TAX  DECIMAL(7,2)                  ,
    CS_NET_PROFIT             DECIMAL(7,2)                  ,
    PRIMARY KEY (CS_ITEM_SK, CS_ORDER_NUMBER)
);

CREATE TABLE STORE_SALES
(
    SS_SOLD_DATE_SK           INTEGER                       ,
    SS_SOLD_TIME_SK           INTEGER                       ,
    SS_ITEM_SK                INTEGER               NOT NULL,
    SS_CUSTOMER_SK            INTEGER                       ,
    SS_CDEMO_SK               INTEGER                       ,
    SS_HDEMO_SK               INTEGER                       ,
    SS_ADDR_SK                INTEGER                       ,
    SS_STORE_SK               INTEGER                       ,
    SS_PROMO_SK               INTEGER                       ,
    SS_TICKET_NUMBER          INTEGER               NOT NULL,
    SS_QUANTITY               INTEGER                       ,
    SS_WHOLESALE_COST         DECIMAL(7,2)                  ,
    SS_LIST_PRICE             DECIMAL(7,2)                  ,
    SS_SALES_PRICE            DECIMAL(7,2)                  ,
    SS_EXT_DISCOUNT_AMT       DECIMAL(7,2)                  ,
    SS_EXT_SALES_PRICE        DECIMAL(7,2)                  ,
    SS_EXT_WHOLESALE_COST     DECIMAL(7,2)                  ,
    SS_EXT_LIST_PRICE         DECIMAL(7,2)                  ,
    SS_EXT_TAX                DECIMAL(7,2)                  ,
    SS_COUPON_AMT             DECIMAL(7,2)                  ,
    SS_NET_PAID               DECIMAL(7,2)                  ,
    SS_NET_PAID_INC_TAX       DECIMAL(7,2)                  ,
    SS_NET_PROFIT             DECIMAL(7,2)                  ,
    PRIMARY KEY (SS_ITEM_SK, SS_TICKET_NUMBER)
);
');

-- 2 단계 SQL
select count(*) from DL_CATALOG_SALES;
    
-- 3 단계 SQL
select count(*) from DL_STORE_SALES;
