-- Generated Code Do Not Modify
-- package org.allbinary.business.user.role
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicUserRoleFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "INACTIVITYTIMEOUT" (JR.asJ (JV.long 360000000))
    JR.setField this "CUSTOMERTIMEOUT" (JR.asJ (JV.long 360000000))
    JR.setField this "CUSTOMERMAXSESSIONTIME" (JR.asJ (JV.long 360000000))
    JR.setField this "MAXSESSIONTIME" (JR.asJ (JV.long 360000000))
    JR.setField this "INSTALLER" (<- JR.new "BasicUserRole" #[(JV.str "Installer"), (JV.int 16), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "ADMINISTRATOR" (<- JR.new "BasicUserRole" #[(JV.str "Administrator"), (JV.int 0), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "CUSTOMER" (<- JR.new "BasicUserRole" #[(JV.str "CustomerUser"), (JV.str "Customer User"), (JV.int 1), (<- JR.getField this "CUSTOMERTIMEOUT"), (<- JR.getField this "CUSTOMERMAXSESSIONTIME")])
    JR.setField this "SUBSCRIBERCUSTOMER" (<- JR.new "BasicUserRole" #[(JV.str "SubscriberUser"), (JV.str "Subscriber User"), (JV.int 2), (<- JR.getField this "CUSTOMERTIMEOUT"), (<- JR.getField this "CUSTOMERMAXSESSIONTIME")])
    JR.setField this "WHOLESALECUSTOMER" (<- JR.new "BasicUserRole" #[(JV.str "WholesaleUser"), (JV.str "Wholesale User"), (JV.int 3), (<- JR.getField this "CUSTOMERTIMEOUT"), (<- JR.getField this "CUSTOMERMAXSESSIONTIME")])
    JR.setField this "STOREMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "StoreManager"), (JV.str "Store Manager"), (JV.int 4), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "PRODUCTMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "ProductManager"), (JV.str "Product Manager"), (JV.int 5), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "CUSTOMERMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "UserManager"), (JV.str "User Manager"), (JV.int 6), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "PAYMENTMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "PaymentManager"), (JV.str "Payment Manager"), (JV.int 7), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "ORDERMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "OrderManager"), (JV.str "Order Manager"), (JV.int 8), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "WEBMANAGER" (<- JR.new "BasicUserRole" #[(JV.str "WebManager"), (JV.str "Web Manager"), (JV.int 9), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "REVIEWER" (<- JR.new "BasicUserRole" #[(JV.str "Reviewer"), (JV.int 10), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "SHIPPING" (<- JR.new "BasicUserRole" #[(JV.str "Shipping"), (JV.int 11), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "ADJUSTER" (<- JR.new "BasicUserRole" #[(JV.str "Adjuster"), (JV.int 12), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "WORKFLOWEDITOR" (<- JR.new "BasicUserRole" #[(JV.str "WorkFlowEditor"), (JV.str "WorkFlow Editor"), (JV.int 13), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "WIZARD" (<- JR.new "BasicUserRole" #[(JV.str "WizardUser"), (JV.str "Wizard User"), (JV.int 14), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    JR.setField this "VIEWEDITOR" (<- JR.new "BasicUserRole" #[(JV.str "ViewEditor"), (JV.str "View Editor"), (JV.int 15), (<- JR.getField this "MAXSESSIONTIME"), (<- JR.getField this "INACTIVITYTIMEOUT")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicUserRoleFactory" "instance" (<- JR.new "BasicUserRoleFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicUserRoleFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicUserRoleFactory",
    javaName := "org.allbinary.business.user.role.BasicUserRoleFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INACTIVITYTIMEOUT", (JV.long 0)), ("CUSTOMERTIMEOUT", (JV.long 0)), ("CUSTOMERMAXSESSIONTIME", (JV.long 0)), ("MAXSESSIONTIME", (JV.long 0)), ("INSTALLER", JV.null), ("ADMINISTRATOR", JV.null), ("CUSTOMER", JV.null), ("SUBSCRIBERCUSTOMER", JV.null), ("WHOLESALECUSTOMER", JV.null), ("STOREMANAGER", JV.null), ("PRODUCTMANAGER", JV.null), ("CUSTOMERMANAGER", JV.null), ("PAYMENTMANAGER", JV.null), ("ORDERMANAGER", JV.null), ("WEBMANAGER", JV.null), ("REVIEWER", JV.null), ("SHIPPING", JV.null), ("ADJUSTER", JV.null), ("WORKFLOWEDITOR", JV.null), ("WIZARD", JV.null), ("VIEWEDITOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicUserRoleFactory


