-- Generated Code Do Not Modify
-- package org.allbinary.business.user.role
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StoreRoleFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "roles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "subscriberRoles" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "wholesaleRoles" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "StoreRoleFactory" "instance" (<- JR.new "StoreRoleFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "StoreRoleFactory" "instance")


def m_getRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "roles")


def m_getSubscriberRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "subscriberRoles")


def m_getWholesaleRoles_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "wholesaleRoles")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_basicUserRoleFactory : JV := (<- JR.callStatic "BasicUserRoleFactory" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "roles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "CUSTOMER")])
    let _ := (<- JR.call (<- JR.getField this "roles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "SUBSCRIBERCUSTOMER")])
    let _ := (<- JR.call (<- JR.getField this "roles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "WHOLESALECUSTOMER")])
    let _ := (<- JR.call (<- JR.getField this "subscriberRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "SUBSCRIBERCUSTOMER")])
    let _ := (<- JR.call (<- JR.getField this "wholesaleRoles") "add_1" #[(<- JR.getField l_basicUserRoleFactory "WHOLESALECUSTOMER")])
    pure this

initialize JR.registerClass {
    name := "StoreRoleFactory",
    javaName := "org.allbinary.business.user.role.StoreRoleFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("roles", JV.null), ("subscriberRoles", JV.null), ("wholesaleRoles", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRoles_0", #[], false, m_getRoles_0), 
        ("getSubscriberRoles_0", #[], false, m_getSubscriberRoles_0), 
        ("getWholesaleRoles_0", #[], false, m_getWholesaleRoles_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StoreRoleFactory


