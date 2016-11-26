package com.main.servlet;

public interface IServletConstant {

 
    public static final String PAGE_TITLE = "SGM OFFSET PRINTER | MAHAL NAGPUR";
    public static final String SERVER_URL = "http://localhost:8080/SGMPrinter/";
    public static final String LOGO_URL = "http://localhost:8080/SGMPrinter/img";
 
    /*
     * PAGE LEVEL SETTING
     */
    public static final String PAGE_INDEX = "";
    public static final String PAGE_SUCCESS = "";
    public static final String PAGE_FAILUER = "manager/index.jsp?requestPage=add_failure";
    public static final String PAGE_NOTFOUND = "";

    public static final String PAGE_ADD_ACCOUNT = "manager/index.jsp?requestPage=add_account";
    public static final String PAGE_VIEW_ACCOUNT = "manager/index.jsp?requestPage=view_account";
    public static final String PAGE_ADD_CITY = "manager/index.jsp?requestPage=add_city";
    public static final String PAGE_VIEW_CITY = "manager/index.jsp?requestPage=view_city";
    public static final String PAGE_ADD_CLIENT = "manager/index.jsp?requestPage=add_client";
    public static final String PAGE_DELETE_CLIENT = "manager/index.jsp?requestPage=delete_client";
    public static final String PAGE_VIEW_CLIENT = "manager/index.jsp?requestPage=view_client";
    public static final String PAGE_ADD_DISTRICT = "manager/index.jsp?requestPage=add_district";
    public static final String PAGE_VIEW_DISTRICT = "manager/index.jsp?requestPage=view_district";
    public static final String PAGE_ADD_EMPLOYEE = "manager/index.jsp?requestPage=add_employee";
    public static final String PAGE_VIEW_EMPLOYEE = "manager/index.jsp?requestPage=view_employee";
    public static final String PAGE_ADD_GSMSIZE = "manager/index.jsp?requestPage=add_gsmsize";
    public static final String PAGE_VIEW_GSMSIZE = "manager/index.jsp?requestPage=view_gsmsize";
    public static final String PAGE_ADD_LAMINATION = "manager/index.jsp?requestPage=add_lamination";
    public static final String PAGE_VIEW_LAMINATION = "manager/index.jsp?requestPage=view_lamination";
    public static final String PAGE_ADD_ORDER = "manager/index.jsp?requestPage=add_order";
    public static final String PAGE_VIEW_ORDER = "manager/index.jsp?requestPage=view_order";
    public static final String PAGE_ADD_ORDERHISTORY = "manager/index.jsp?requestPage=add_orderhistory";
    public static final String PAGE_VIEW_ORDERHISTORY = "manager/index.jsp?requestPage=view_orderhistory";
    public static final String PAGE_ADD_PAPER = "manager/index.jsp?requestPage=add_paper";
    public static final String PAGE_VIEW_PAPER = "manager/index.jsp?requestPage=view_paper";
    public static final String PAGE_ADD_POSTPRESS = "manager/index.jsp?requestPage=add_postpress";
    public static final String PAGE_VIEW_POSTPRESS = "manager/index.jsp?requestPage=view_postpress";
    public static final String PAGE_ADD_PRINTTYPE = "manager/index.jsp?requestPage=add_printtype";
    public static final String PAGE_VIEW_PRINTTYPE = "manager/index.jsp?requestPage=view_printtype";
    public static final String PAGE_ADD_QUANTITY = "manager/index.jsp?requestPage=add_quantity";
    public static final String PAGE_VIEW_QUANTITY = "manager/index.jsp?requestPage=view_quantity";
    public static final String PAGE_ADD_QUOTATION = "manager/index.jsp?requestPage=add_quotation";
    public static final String PAGE_VIEW_QUOTATION = "manager/index.jsp?requestPage=view_quotation";
    public static final String PAGE_ADD_SIDE = "manager/index.jsp?requestPage=add_side";
    public static final String PAGE_VIEW_SIDE = "manager/index.jsp?requestPage=view_side";
    public static final String PAGE_ADD_STATE = "manager/index.jsp?requestPage=add_state";
    public static final String PAGE_VIEW_STATE = "manager/index.jsp?requestPage=view_state";
    public static final String PAGE_ADD_CARD = "manager/index.jsp?requestPage=add_card";
    public static final String PAGE_VIEW_CARD = "manager/index.jsp?requestPage=view_card";
    
    /*
     * ACTION LEVEL SETTING
     */
    public static final String ACTION = "action";
    public static final String HIDDEN_ID = "updateId";
    public static final String HIDDEN_CLIENT_ID = "clientId";
    public static final String ACTION_LOGIN = "loginaction";
    public static final String ACTION_RECOVER = "recoveraction";
    public static final String ACTION_ADD = "addaction";
    public static final String ACTION_UPDATE = "updateaction";
    public static final String ACTION_DELETE = "deleteaction";
    public static final String ACTION_VIEW = "viewaction";
    public static final String ACTION_AUTOCOMPLET = "autocompletaction";
    public static final String ACTION_SEARCH = "search";

    /*
     * ARRIBUTE LEVEL SETTING
     */
    public static final String ATTRIBUTE_USER_EMAIL = "useremailid";
    public static final String ATTRIBUTE_ADMIN_EMAIL = "adminemailid";
    public static final String ATTRIBUTE_MANAGER_EMAIL = "manageremailid";

    /*
     * MESSAGE LEVEL SETTING
     */
    public static final String MESSAGE = "message";
    public static final String MESSAGE_SUCCESS = "Operation Done!!!";
    public static final String MESSAGE_FAIL = "Operation Fail!!!";
    public static final String MESSAGE_EXCEPTION = "exception";
}
