CREATE COLUMN TABLE DBGEN_VERSION
(
    DV_VERSION                NVARCHAR(16)                   ,
    DV_CREATE_DATE            DATE                          ,
    DV_CREATE_TIME            TIME                          ,
    DV_CMDLINE_ARGS           NVARCHAR(200)
);

CREATE COLUMN TABLE CUSTOMER_ADDRESS
(
    CA_ADDRESS_SK             INTEGER               NOT NULL,
    CA_ADDRESS_ID             CHAR(16)              NOT NULL,
    CA_STREET_NUMBER          CHAR(10)                      ,
    CA_STREET_NAME            NVARCHAR(60)                   ,
    CA_STREET_TYPE            CHAR(15)                      ,
    CA_SUITE_NUMBER           CHAR(10)                      ,
    CA_CITY                   NVARCHAR(60)                   ,
    CA_COUNTY                 NVARCHAR(30)                   ,
    CA_STATE                  CHAR(2)                       ,
    CA_ZIP                    CHAR(10)                      ,
    CA_COUNTRY                NVARCHAR(20)                   ,
    CA_GMT_OFFSET             DECIMAL(5,2)                  ,
    CA_LOCATION_TYPE          CHAR(20)                      ,
    PRIMARY KEY (CA_ADDRESS_SK)
);

CREATE COLUMN TABLE CUSTOMER_DEMOGRAPHICS
(
    CD_DEMO_SK                INTEGER               NOT NULL,
    CD_GENDER                 CHAR(1)                       ,
    CD_MARITAL_STATUS         CHAR(1)                       ,
    CD_EDUCATION_STATUS       CHAR(20)                      ,
    CD_PURCHASE_ESTIMATE      INTEGER                       ,
    CD_CREDIT_RATING          CHAR(10)                      ,
    CD_DEP_COUNT              INTEGER                       ,
    CD_DEP_EMPLOYED_COUNT     INTEGER                       ,
    CD_DEP_COLLEGE_COUNT      INTEGER                       ,
    PRIMARY KEY (CD_DEMO_SK)
);

CREATE COLUMN TABLE DATE_DIM
(
    D_DATE_SK                 INTEGER               NOT NULL,
    D_DATE_ID                 CHAR(16)              NOT NULL,
    D_DATE                    DATE                          ,
    D_MONTH_SEQ               INTEGER                       ,
    D_WEEK_SEQ                INTEGER                       ,
    D_QUARTER_SEQ             INTEGER                       ,
    D_YEAR                    INTEGER                       ,
    D_DOW                     INTEGER                       ,
    D_MOY                     INTEGER                       ,
    D_DOM                     INTEGER                       ,
    D_QOY                     INTEGER                       ,
    D_FY_YEAR                 INTEGER                       ,
    D_FY_QUARTER_SEQ          INTEGER                       ,
    D_FY_WEEK_SEQ             INTEGER                       ,
    D_DAY_NAME                CHAR(9)                       ,
    D_QUARTER_NAME            CHAR(6)                       ,
    D_HOLIDAY                 CHAR(1)                       ,
    D_WEEKEND                 CHAR(1)                       ,
    D_FOLLOWING_HOLIDAY       CHAR(1)                       ,
    D_FIRST_DOM               INTEGER                       ,
    D_LAST_DOM                INTEGER                       ,
    D_SAME_DAY_LY             INTEGER                       ,
    D_SAME_DAY_LQ             INTEGER                       ,
    D_CURRENT_DAY             CHAR(1)                       ,
    D_CURRENT_WEEK            CHAR(1)                       ,
    D_CURRENT_MONTH           CHAR(1)                       ,
    D_CURRENT_QUARTER         CHAR(1)                       ,
    D_CURRENT_YEAR            CHAR(1)                       ,
    PRIMARY KEY (D_DATE_SK)
);

CREATE COLUMN TABLE WAREHOUSE
(
    W_WAREHOUSE_SK            INTEGER               NOT NULL,
    W_WAREHOUSE_ID            CHAR(16)              NOT NULL,
    W_WAREHOUSE_NAME          NVARCHAR(20)                   ,
    W_WAREHOUSE_SQ_FT         INTEGER                       ,
    W_STREET_NUMBER           CHAR(10)                      ,
    W_STREET_NAME             NVARCHAR(60)                   ,
    W_STREET_TYPE             CHAR(15)                      ,
    W_SUITE_NUMBER            CHAR(10)                      ,
    W_CITY                    NVARCHAR(60)                   ,
    W_COUNTY                  NVARCHAR(30)                   ,
    W_STATE                   CHAR(2)                       ,
    W_ZIP                     CHAR(10)                      ,
    W_COUNTRY                 NVARCHAR(20)                   ,
    W_GMT_OFFSET              DECIMAL(5,2)                  ,
    PRIMARY KEY (W_WAREHOUSE_SK)
);

CREATE COLUMN TABLE SHIP_MODE
(
    SM_SHIP_MODE_SK           INTEGER               NOT NULL,
    SM_SHIP_MODE_ID           CHAR(16)              NOT NULL,
    SM_TYPE                   CHAR(30)                      ,
    SM_CODE                   CHAR(10)                      ,
    SM_CARRIER                CHAR(20)                      ,
    SM_CONTRACT               CHAR(20)                      ,
    PRIMARY KEY (SM_SHIP_MODE_SK)
);

CREATE COLUMN TABLE TIME_DIM
(
    T_TIME_SK                 INTEGER               NOT NULL,
    T_TIME_ID                 CHAR(16)              NOT NULL,
    T_TIME                    INTEGER                       ,
    T_HOUR                    INTEGER                       ,
    T_MINUTE                  INTEGER                       ,
    T_SECOND                  INTEGER                       ,
    T_AM_PM                   CHAR(2)                       ,
    T_SHIFT                   CHAR(20)                      ,
    T_SUB_SHIFT               CHAR(20)                      ,
    T_MEAL_TIME               CHAR(20)                      ,
    PRIMARY KEY (T_TIME_SK)
);

CREATE COLUMN TABLE REASON
(
    R_REASON_SK               INTEGER               NOT NULL,
    R_REASON_ID               CHAR(16)              NOT NULL,
    R_REASON_DESC             CHAR(100)                     ,
    PRIMARY KEY (R_REASON_SK)
);

CREATE COLUMN TABLE INCOME_BAND
(
    IB_INCOME_BAND_SK         INTEGER               NOT NULL,
    IB_LOWER_BOUND            INTEGER                       ,
    IB_UPPER_BOUND            INTEGER                       ,
    PRIMARY KEY (IB_INCOME_BAND_SK)
);

CREATE COLUMN TABLE ITEM
(
    I_ITEM_SK                 INTEGER               NOT NULL,
    I_ITEM_ID                 CHAR(16)              NOT NULL,
    I_REC_START_DATE          DATE                          ,
    I_REC_END_DATE            DATE                          ,
    I_ITEM_DESC               NVARCHAR(200)                  ,
    I_CURRENT_PRICE           DECIMAL(7,2)                  ,
    I_WHOLESALE_COST          DECIMAL(7,2)                  ,
    I_BRAND_ID                INTEGER                       ,
    I_BRAND                   CHAR(50)                      ,
    I_CLASS_ID                INTEGER                       ,
    I_CLASS                   CHAR(50)                      ,
    I_CATEGORY_ID             INTEGER                       ,
    I_CATEGORY                CHAR(50)                      ,
    I_MANUFACT_ID             INTEGER                       ,
    I_MANUFACT                CHAR(50)                      ,
    I_SIZE                    CHAR(20)                      ,
    I_FORMULATION             CHAR(20)                      ,
    I_COLOR                   CHAR(20)                      ,
    I_UNITS                   CHAR(10)                      ,
    I_CONTAINER               CHAR(10)                      ,
    I_MANAGER_ID              INTEGER                       ,
    I_PRODUCT_NAME            CHAR(50)                      ,
    PRIMARY KEY (I_ITEM_SK)
);

CREATE COLUMN TABLE STORE
(
    S_STORE_SK                INTEGER               NOT NULL,
    S_STORE_ID                CHAR(16)              NOT NULL,
    S_REC_START_DATE          DATE                          ,
    S_REC_END_DATE            DATE                          ,
    S_CLOSED_DATE_SK          INTEGER                       ,
    S_STORE_NAME              NVARCHAR(50)                   ,
    S_NUMBER_EMPLOYEES        INTEGER                       ,
    S_FLOOR_SPACE             INTEGER                       ,
    S_HOURS                   CHAR(20)                      ,
    S_MANAGER                 NVARCHAR(40)                   ,
    S_MARKET_ID               INTEGER                       ,
    S_GEOGRAPHY_CLASS         NVARCHAR(100)                  ,
    S_MARKET_DESC             NVARCHAR(100)                  ,
    S_MARKET_MANAGER          NVARCHAR(40)                   ,
    S_DIVISION_ID             INTEGER                       ,
    S_DIVISION_NAME           NVARCHAR(50)                   ,
    S_COMPANY_ID              INTEGER                       ,
    S_COMPANY_NAME            NVARCHAR(50)                   ,
    S_STREET_NUMBER           NVARCHAR(10)                   ,
    S_STREET_NAME             NVARCHAR(60)                   ,
    S_STREET_TYPE             CHAR(15)                      ,
    S_SUITE_NUMBER            CHAR(10)                      ,
    S_CITY                    NVARCHAR(60)                   ,
    S_COUNTY                  NVARCHAR(30)                   ,
    S_STATE                   CHAR(2)                       ,
    S_ZIP                     CHAR(10)                      ,
    S_COUNTRY                 NVARCHAR(20)                   ,
    S_GMT_OFFSET              DECIMAL(5,2)                  ,
    S_TAX_PRECENTAGE          DECIMAL(5,2)                  ,
    PRIMARY KEY (S_STORE_SK)
);

CREATE COLUMN TABLE CALL_CENTER
(
    CC_CALL_CENTER_SK         INTEGER               NOT NULL,
    CC_CALL_CENTER_ID         CHAR(16)              NOT NULL,
    CC_REC_START_DATE         DATE                          ,
    CC_REC_END_DATE           DATE                          ,
    CC_CLOSED_DATE_SK         INTEGER                       ,
    CC_OPEN_DATE_SK           INTEGER                       ,
    CC_NAME                   NVARCHAR(50)                   ,
    CC_CLASS                  NVARCHAR(50)                   ,
    CC_EMPLOYEES              INTEGER                       ,
    CC_SQ_FT                  INTEGER                       ,
    CC_HOURS                  CHAR(20)                      ,
    CC_MANAGER                NVARCHAR(40)                   ,
    CC_MKT_ID                 INTEGER                       ,
    CC_MKT_CLASS              CHAR(50)                      ,
    CC_MKT_DESC               NVARCHAR(100)                  ,
    CC_MARKET_MANAGER         NVARCHAR(40)                   ,
    CC_DIVISION               INTEGER                       ,
    CC_DIVISION_NAME          NVARCHAR(50)                   ,
    CC_COMPANY                INTEGER                       ,
    CC_COMPANY_NAME           CHAR(50)                      ,
    CC_STREET_NUMBER          CHAR(10)                      ,
    CC_STREET_NAME            NVARCHAR(60)                   ,
    CC_STREET_TYPE            CHAR(15)                      ,
    CC_SUITE_NUMBER           CHAR(10)                      ,
    CC_CITY                   NVARCHAR(60)                   ,
    CC_COUNTY                 NVARCHAR(30)                   ,
    CC_STATE                  CHAR(2)                       ,
    CC_ZIP                    CHAR(10)                      ,
    CC_COUNTRY                NVARCHAR(20)                   ,
    CC_GMT_OFFSET             DECIMAL(5,2)                  ,
    CC_TAX_PERCENTAGE         DECIMAL(5,2)                  ,
    PRIMARY KEY (CC_CALL_CENTER_SK)
);

CREATE COLUMN TABLE CUSTOMER
(
    C_CUSTOMER_SK             INTEGER               NOT NULL,
    C_CUSTOMER_ID             CHAR(16)              NOT NULL,
    C_CURRENT_CDEMO_SK        INTEGER                       ,
    C_CURRENT_HDEMO_SK        INTEGER                       ,
    C_CURRENT_ADDR_SK         INTEGER                       ,
    C_FIRST_SHIPTO_DATE_SK    INTEGER                       ,
    C_FIRST_SALES_DATE_SK     INTEGER                       ,
    C_SALUTATION              CHAR(10)                      ,
    C_FIRST_NAME              CHAR(20)                      ,
    C_LAST_NAME               CHAR(30)                      ,
    C_PREFERRED_CUST_FLAG     CHAR(1)                       ,
    C_BIRTH_DAY               INTEGER                       ,
    C_BIRTH_MONTH             INTEGER                       ,
    C_BIRTH_YEAR              INTEGER                       ,
    C_BIRTH_COUNTRY           NVARCHAR(20)                   ,
    C_LOGIN                   CHAR(13)                      ,
    C_EMAIL_ADDRESS           CHAR(50)                      ,
    C_LAST_REVIEW_DATE        CHAR(10)                      ,
    PRIMARY KEY (C_CUSTOMER_SK)
);

CREATE COLUMN TABLE WEB_SITE
(
    WEB_SITE_SK               INTEGER               NOT NULL,
    WEB_SITE_ID               CHAR(16)              NOT NULL,
    WEB_REC_START_DATE        DATE                          ,
    WEB_REC_END_DATE          DATE                          ,
    WEB_NAME                  NVARCHAR(50)                   ,
    WEB_OPEN_DATE_SK          INTEGER                       ,
    WEB_CLOSE_DATE_SK         INTEGER                       ,
    WEB_CLASS                 NVARCHAR(50)                   ,
    WEB_MANAGER               NVARCHAR(40)                   ,
    WEB_MKT_ID                INTEGER                       ,
    WEB_MKT_CLASS             NVARCHAR(50)                   ,
    WEB_MKT_DESC              NVARCHAR(100)                  ,
    WEB_MARKET_MANAGER        NVARCHAR(40)                   ,
    WEB_COMPANY_ID            INTEGER                       ,
    WEB_COMPANY_NAME          CHAR(50)                      ,
    WEB_STREET_NUMBER         CHAR(10)                      ,
    WEB_STREET_NAME           NVARCHAR(60)                   ,
    WEB_STREET_TYPE           CHAR(15)                      ,
    WEB_SUITE_NUMBER          CHAR(10)                      ,
    WEB_CITY                  NVARCHAR(60)                   ,
    WEB_COUNTY                NVARCHAR(30)                   ,
    WEB_STATE                 CHAR(2)                       ,
    WEB_ZIP                   CHAR(10)                      ,
    WEB_COUNTRY               NVARCHAR(20)                   ,
    WEB_GMT_OFFSET            DECIMAL(5,2)                  ,
    WEB_TAX_PERCENTAGE        DECIMAL(5,2)                  ,
    PRIMARY KEY (WEB_SITE_SK)
);

CREATE COLUMN TABLE STORE_RETURNS
(
    SR_RETURNED_DATE_SK       INTEGER                       ,
    SR_RETURN_TIME_SK         INTEGER                       ,
    SR_ITEM_SK                INTEGER               NOT NULL,
    SR_CUSTOMER_SK            INTEGER                       ,
    SR_CDEMO_SK               INTEGER                       ,
    SR_HDEMO_SK               INTEGER                       ,
    SR_ADDR_SK                INTEGER                       ,
    SR_STORE_SK               INTEGER                       ,
    SR_REASON_SK              INTEGER                       ,
    SR_TICKET_NUMBER          INTEGER               NOT NULL,
    SR_RETURN_QUANTITY        INTEGER                       ,
    SR_RETURN_AMT             DECIMAL(7,2)                  ,
    SR_RETURN_TAX             DECIMAL(7,2)                  ,
    SR_RETURN_AMT_INC_TAX     DECIMAL(7,2)                  ,
    SR_FEE                    DECIMAL(7,2)                  ,
    SR_RETURN_SHIP_COST       DECIMAL(7,2)                  ,
    SR_REFUNDED_CASH          DECIMAL(7,2)                  ,
    SR_REVERSED_CHARGE        DECIMAL(7,2)                  ,
    SR_STORE_CREDIT           DECIMAL(7,2)                  ,
    SR_NET_LOSS               DECIMAL(7,2)                  ,
    PRIMARY KEY (SR_ITEM_SK, SR_TICKET_NUMBER)
);

CREATE COLUMN TABLE HOUSEHOLD_DEMOGRAPHICS
(
    HD_DEMO_SK                INTEGER               NOT NULL,
    HD_INCOME_BAND_SK         INTEGER                       ,
    HD_BUY_POTENTIAL          CHAR(15)                      ,
    HD_DEP_COUNT              INTEGER                       ,
    HD_VEHICLE_COUNT          INTEGER                       ,
    PRIMARY KEY (HD_DEMO_SK)
);

CREATE COLUMN TABLE WEB_PAGE
(
    WP_WEB_PAGE_SK            INTEGER               NOT NULL,
    WP_WEB_PAGE_ID            CHAR(16)              NOT NULL,
    WP_REC_START_DATE         DATE                          ,
    WP_REC_END_DATE           DATE                          ,
    WP_CREATION_DATE_SK       INTEGER                       ,
    WP_ACCESS_DATE_SK         INTEGER                       ,
    WP_AUTOGEN_FLAG           CHAR(1)                       ,
    WP_CUSTOMER_SK            INTEGER                       ,
    WP_URL                    NVARCHAR(100)                  ,
    WP_TYPE                   CHAR(50)                      ,
    WP_CHAR_COUNT             INTEGER                       ,
    WP_LINK_COUNT             INTEGER                       ,
    WP_IMAGE_COUNT            INTEGER                       ,
    WP_MAX_AD_COUNT           INTEGER                       ,
    PRIMARY KEY (WP_WEB_PAGE_SK)
);

CREATE COLUMN TABLE PROMOTION
(
    P_PROMO_SK                INTEGER               NOT NULL,
    P_PROMO_ID                CHAR(16)              NOT NULL,
    P_START_DATE_SK           INTEGER                       ,
    P_END_DATE_SK             INTEGER                       ,
    P_ITEM_SK                 INTEGER                       ,
    P_COST                    DECIMAL(15,2)                 ,
    P_RESPONSE_TARGET         INTEGER                       ,
    P_PROMO_NAME              CHAR(50)                      ,
    P_CHANNEL_DMAIL           CHAR(1)                       ,
    P_CHANNEL_EMAIL           CHAR(1)                       ,
    P_CHANNEL_CATALOG         CHAR(1)                       ,
    P_CHANNEL_TV              CHAR(1)                       ,
    P_CHANNEL_RADIO           CHAR(1)                       ,
    P_CHANNEL_PRESS           CHAR(1)                       ,
    P_CHANNEL_EVENT           CHAR(1)                       ,
    P_CHANNEL_DEMO            CHAR(1)                       ,
    P_CHANNEL_DETAILS         NVARCHAR(100)                  ,
    P_PURPOSE                 CHAR(15)                      ,
    P_DISCOUNT_ACTIVE         CHAR(1)                       ,
    PRIMARY KEY (P_PROMO_SK)
);

CREATE COLUMN TABLE CATALOG_PAGE
(
    CP_CATALOG_PAGE_SK        INTEGER               NOT NULL,
    CP_CATALOG_PAGE_ID        CHAR(16)              NOT NULL,
    CP_START_DATE_SK          INTEGER                       ,
    CP_END_DATE_SK            INTEGER                       ,
    CP_DEPARTMENT             NVARCHAR(50)                   ,
    CP_CATALOG_NUMBER         INTEGER                       ,
    CP_CATALOG_PAGE_NUMBER    INTEGER                       ,
    CP_DESCRIPTION            NVARCHAR(100)                  ,
    CP_TYPE                   NVARCHAR(100)                  ,
    PRIMARY KEY (CP_CATALOG_PAGE_SK)
);

CREATE COLUMN TABLE INVENTORY
(
    INV_DATE_SK               INTEGER               NOT NULL,
    INV_ITEM_SK               INTEGER               NOT NULL,
    INV_WAREHOUSE_SK          INTEGER               NOT NULL,
    INV_QUANTITY_ON_HAND      INTEGER                       ,
    PRIMARY KEY (INV_DATE_SK, INV_ITEM_SK, INV_WAREHOUSE_SK)
);

CREATE COLUMN TABLE CATALOG_RETURNS
(
    CR_RETURNED_DATE_SK       INTEGER                       ,
    CR_RETURNED_TIME_SK       INTEGER                       ,
    CR_ITEM_SK                INTEGER               NOT NULL,
    CR_REFUNDED_CUSTOMER_SK   INTEGER                       ,
    CR_REFUNDED_CDEMO_SK      INTEGER                       ,
    CR_REFUNDED_HDEMO_SK      INTEGER                       ,
    CR_REFUNDED_ADDR_SK       INTEGER                       ,
    CR_RETURNING_CUSTOMER_SK  INTEGER                       ,
    CR_RETURNING_CDEMO_SK     INTEGER                       ,
    CR_RETURNING_HDEMO_SK     INTEGER                       ,
    CR_RETURNING_ADDR_SK      INTEGER                       ,
    CR_CALL_CENTER_SK         INTEGER                       ,
    CR_CATALOG_PAGE_SK        INTEGER                       ,
    CR_SHIP_MODE_SK           INTEGER                       ,
    CR_WAREHOUSE_SK           INTEGER                       ,
    CR_REASON_SK              INTEGER                       ,
    CR_ORDER_NUMBER           INTEGER               NOT NULL,
    CR_RETURN_QUANTITY        INTEGER                       ,
    CR_RETURN_AMOUNT          DECIMAL(7,2)                  ,
    CR_RETURN_TAX             DECIMAL(7,2)                  ,
    CR_RETURN_AMT_INC_TAX     DECIMAL(7,2)                  ,
    CR_FEE                    DECIMAL(7,2)                  ,
    CR_RETURN_SHIP_COST       DECIMAL(7,2)                  ,
    CR_REFUNDED_CASH          DECIMAL(7,2)                  ,
    CR_REVERSED_CHARGE        DECIMAL(7,2)                  ,
    CR_STORE_CREDIT           DECIMAL(7,2)                  ,
    CR_NET_LOSS               DECIMAL(7,2)                  ,
    PRIMARY KEY (CR_ITEM_SK, CR_ORDER_NUMBER)
);

CREATE COLUMN TABLE WEB_RETURNS
(
    WR_RETURNED_DATE_SK       INTEGER                       ,
    WR_RETURNED_TIME_SK       INTEGER                       ,
    WR_ITEM_SK                INTEGER               NOT NULL,
    WR_REFUNDED_CUSTOMER_SK   INTEGER                       ,
    WR_REFUNDED_CDEMO_SK      INTEGER                       ,
    WR_REFUNDED_HDEMO_SK      INTEGER                       ,
    WR_REFUNDED_ADDR_SK       INTEGER                       ,
    WR_RETURNING_CUSTOMER_SK  INTEGER                       ,
    WR_RETURNING_CDEMO_SK     INTEGER                       ,
    WR_RETURNING_HDEMO_SK     INTEGER                       ,
    WR_RETURNING_ADDR_SK      INTEGER                       ,
    WR_WEB_PAGE_SK            INTEGER                       ,
    WR_REASON_SK              INTEGER                       ,
    WR_ORDER_NUMBER           INTEGER               NOT NULL,
    WR_RETURN_QUANTITY        INTEGER                       ,
    WR_RETURN_AMT             DECIMAL(7,2)                  ,
    WR_RETURN_TAX             DECIMAL(7,2)                  ,
    WR_RETURN_AMT_INC_TAX     DECIMAL(7,2)                  ,
    WR_FEE                    DECIMAL(7,2)                  ,
    WR_RETURN_SHIP_COST       DECIMAL(7,2)                  ,
    WR_REFUNDED_CASH          DECIMAL(7,2)                  ,
    WR_REVERSED_CHARGE        DECIMAL(7,2)                  ,
    WR_ACCOUNT_CREDIT         DECIMAL(7,2)                  ,
    WR_NET_LOSS               DECIMAL(7,2)                  ,
    PRIMARY KEY (WR_ITEM_SK, WR_ORDER_NUMBER)
);

CREATE COLUMN TABLE WEB_SALES
(
    WS_SOLD_DATE_SK           INTEGER                       ,
    WS_SOLD_TIME_SK           INTEGER                       ,
    WS_SHIP_DATE_SK           INTEGER                       ,
    WS_ITEM_SK                INTEGER               NOT NULL,
    WS_BILL_CUSTOMER_SK       INTEGER                       ,
    WS_BILL_CDEMO_SK          INTEGER                       ,
    WS_BILL_HDEMO_SK          INTEGER                       ,
    WS_BILL_ADDR_SK           INTEGER                       ,
    WS_SHIP_CUSTOMER_SK       INTEGER                       ,
    WS_SHIP_CDEMO_SK          INTEGER                       ,
    WS_SHIP_HDEMO_SK          INTEGER                       ,
    WS_SHIP_ADDR_SK           INTEGER                       ,
    WS_WEB_PAGE_SK            INTEGER                       ,
    WS_WEB_SITE_SK            INTEGER                       ,
    WS_SHIP_MODE_SK           INTEGER                       ,
    WS_WAREHOUSE_SK           INTEGER                       ,
    WS_PROMO_SK               INTEGER                       ,
    WS_ORDER_NUMBER           INTEGER               NOT NULL,
    WS_QUANTITY               INTEGER                       ,
    WS_WHOLESALE_COST         DECIMAL(7,2)                  ,
    WS_LIST_PRICE             DECIMAL(7,2)                  ,
    WS_SALES_PRICE            DECIMAL(7,2)                  ,
    WS_EXT_DISCOUNT_AMT       DECIMAL(7,2)                  ,
    WS_EXT_SALES_PRICE        DECIMAL(7,2)                  ,
    WS_EXT_WHOLESALE_COST     DECIMAL(7,2)                  ,
    WS_EXT_LIST_PRICE         DECIMAL(7,2)                  ,
    WS_EXT_TAX                DECIMAL(7,2)                  ,
    WS_COUPON_AMT             DECIMAL(7,2)                  ,
    WS_EXT_SHIP_COST          DECIMAL(7,2)                  ,
    WS_NET_PAID               DECIMAL(7,2)                  ,
    WS_NET_PAID_INC_TAX       DECIMAL(7,2)                  ,
    WS_NET_PAID_INC_SHIP      DECIMAL(7,2)                  ,
    WS_NET_PAID_INC_SHIP_TAX  DECIMAL(7,2)                  ,
    WS_NET_PROFIT             DECIMAL(7,2)                  ,
    PRIMARY KEY (WS_ITEM_SK, WS_ORDER_NUMBER)
);

CREATE COLUMN TABLE CATALOG_SALES
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

CREATE COLUMN TABLE STORE_SALES
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
