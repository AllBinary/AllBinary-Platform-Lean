-- Generated Code Do Not Modify
-- package org.allbinary.business.user.role
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdminRoleFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "adminRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "storeAdminRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "storeManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "productManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "reviewManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "customerManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "workflowManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "orderManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "adjusterManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "shippingManagementRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "webManagementRoles" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AdminRoleFactory" "instance" (<- JR.new "AdminRoleFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AdminRoleFactory" "instance")


def m_getProductManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "productManagementRoles")


def m_getAdminRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "adminRoles")


def m_getStoreAdminRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "storeAdminRoles")


def m_getStoreManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "storeManagementRoles")


def m_getReviewManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "reviewManagementRoles")


def m_getCustomerManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "customerManagementRoles")


def m_getWorkflowManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "workflowManagementRoles")


def m_getWebManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "webManagementRoles")


def m_getShippingManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "shippingManagementRoles")


def m_getAdjusterManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "adjusterManagementRoles")


def m_getOrderManagementRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "orderManagementRoles")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_basicUserRoleFactory : JV := (<- JR.callStatic "BasicUserRoleFactory" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "adminRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "storeAdminRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "storeAdminRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "CUSTOMERMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADJUSTER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "PRODUCTMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "REVIEWER")])
    let _ := (<- JR.call (<- JR.getField this "storeManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "SHIPPING")])
    let _ := (<- JR.call (<- JR.getField this "productManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "productManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "productManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "PRODUCTMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "reviewManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "reviewManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "reviewManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "REVIEWER")])
    let _ := (<- JR.call (<- JR.getField this "customerManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "customerManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "customerManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "CUSTOMERMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "workflowManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "workflowManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "workflowManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "WORKFLOWEDITOR")])
    let _ := (<- JR.call (<- JR.getField this "orderManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "orderManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "adjusterManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "adjusterManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "adjusterManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADJUSTER")])
    let _ := (<- JR.call (<- JR.getField this "shippingManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "shippingManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "shippingManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "SHIPPING")])
    let _ := (<- JR.call (<- JR.getField this "webManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "ADMINISTRATOR")])
    let _ := (<- JR.call (<- JR.getField this "webManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "STOREMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "webManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "WEBMANAGER")])
    let _ := (<- JR.call (<- JR.getField this "webManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "WORKFLOWEDITOR")])
    let _ := (<- JR.call (<- JR.getField this "webManagementRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "VIEWEDITOR")])
    pure this

initialize JR.registerClass {
    name := "AdminRoleFactory",
    javaName := "org.allbinary.business.user.role.AdminRoleFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("adminRoles", JV.null), ("storeAdminRoles", JV.null), ("storeManagementRoles", JV.null), ("productManagementRoles", JV.null), ("reviewManagementRoles", JV.null), ("customerManagementRoles", JV.null), ("workflowManagementRoles", JV.null), ("orderManagementRoles", JV.null), ("adjusterManagementRoles", JV.null), ("shippingManagementRoles", JV.null), ("webManagementRoles", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getProductManagementRoles_0", #[], false, m_getProductManagementRoles_0), 
        ("getAdminRoles_0", #[], false, m_getAdminRoles_0), 
        ("getStoreAdminRoles_0", #[], false, m_getStoreAdminRoles_0), 
        ("getStoreManagementRoles_0", #[], false, m_getStoreManagementRoles_0), 
        ("getReviewManagementRoles_0", #[], false, m_getReviewManagementRoles_0), 
        ("getCustomerManagementRoles_0", #[], false, m_getCustomerManagementRoles_0), 
        ("getWorkflowManagementRoles_0", #[], false, m_getWorkflowManagementRoles_0), 
        ("getWebManagementRoles_0", #[], false, m_getWebManagementRoles_0), 
        ("getShippingManagementRoles_0", #[], false, m_getShippingManagementRoles_0), 
        ("getAdjusterManagementRoles_0", #[], false, m_getAdjusterManagementRoles_0), 
        ("getOrderManagementRoles_0", #[], false, m_getOrderManagementRoles_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdminRoleFactory


