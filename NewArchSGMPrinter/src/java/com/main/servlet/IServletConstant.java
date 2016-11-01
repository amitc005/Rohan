package com.main.servlet;

public interface IServletConstant {

    /*
     * PAGE LEVEL SETTING
     */
    public static final String PAGE_INDEX = "";
    public static final String PAGE_SUCCESS = "";
    public static final String PAGE_FAILUER = "";
    public static final String PAGE_NOTFOUND = "";
    public static final String PAGE_ADD_ = "";
    public static final String PAGE_VIEW_ = "";

    /*
     * ACTION LEVEL SETTING
     */
    public static final String ACTION = "action";
    public static final String ACTION_ADD = "addaction";
    public static final String ACTION_UPDATE = "updateaction";
    public static final String ACTION_DELETE = "deleteaction";
    public static final String ACTION_VIEW = "viewaction";
    public static final String ACTION_AUTOCOMPLET = "autocompletaction";

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
}
