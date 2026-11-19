-- Generated Code Do Not Modify
-- package org.allbinary.business.user.role
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicUserRole

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getRoleId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "m_int_RoleId"))


def m_getRole_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "role")


def m_getSessionTimeout_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "sessionTimeout"))


def m_getSessionInactivityTimeout_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "sessionInactivityTimeout"))


def m_equals_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicUserRole : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.call this "getRoleId_0" #[]) (<- JR.call l_basicUserRole "getRoleId_0" #[])) then
        return (JV.bool true)
    return (JV.bool false)


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "getRole_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aRole : JV := (JR.arg jargs 0)
    let mut l_a_int_RoleId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_aSessionTimeout : JV := (JR.asJ (JR.arg jargs 2))
    let mut l_aSessionInactivityTimeout : JV := (JR.asJ (JR.arg jargs 3))
    let _ <- JR.thisInit "BasicUserRole" this #[l_aRole, l_aRole, l_a_int_RoleId, l_aSessionTimeout, l_aSessionInactivityTimeout]
    pure this


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aRole : JV := (JR.arg jargs 0)
    let mut l_aDisplayValue : JV := (JR.arg jargs 1)
    let mut l_a_int_RoleId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_aSessionTimeout : JV := (JR.asJ (JR.arg jargs 3))
    let mut l_aSessionInactivityTimeout : JV := (JR.asJ (JR.arg jargs 4))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "m_int_RoleId" (JR.asI l_a_int_RoleId)
    JR.setField this "role" l_aRole
    JR.setField this "displayValue" l_aDisplayValue
    JR.setField this "sessionTimeout" (JR.asJ l_aSessionTimeout)
    JR.setField this "sessionInactivityTimeout" (JR.asJ l_aSessionInactivityTimeout)
    let _ := (<- JR.call (<- JR.getField (<- JR.callStatic "BasicUserRoles" "getInstance_0" #[]) "roleVector") "add_1" #[this])
    pure this

initialize JR.registerClass {
    name := "BasicUserRole",
    javaName := "org.allbinary.business.user.role.BasicUserRole",
    super := "Object",
    interfaces := #["Serializable"],
    isInterface := false,
    fields := #[("m_int_RoleId", (JV.int 0)), ("role", JV.null), ("displayValue", JV.null), ("sessionTimeout", (JV.long 0)), ("sessionInactivityTimeout", (JV.long 0))],
    statics := #[],
    methods := #[
        ("getRoleId_0", #[], false, m_getRoleId_0), 
        ("getRole_0", #[], false, m_getRole_0), 
        ("getSessionTimeout_0", #[], false, m_getSessionTimeout_0), 
        ("getSessionInactivityTimeout_0", #[], false, m_getSessionInactivityTimeout_0), 
        ("equals_1", #["BasicUserRole"], false, m_equals_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["String", "int", "long", "long"], false, jinit_4), 
        ("jinit_5", #["String", "String", "int", "long", "long"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicUserRole


