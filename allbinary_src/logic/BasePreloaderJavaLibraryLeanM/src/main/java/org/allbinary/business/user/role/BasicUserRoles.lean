-- Generated Code Do Not Modify
-- package org.allbinary.business.user.role
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicUserRoles

def jfields (this : JV) : JM JV := do
    JR.setField this "roleVector" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicUserRoles" "instance" (<- JR.new "BasicUserRoles" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicUserRoles" "instance")


def m_getRole_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_role : JV := (JR.arg jargs 0)
    let mut l_roleVector : JV := (<- JR.call this "getAll_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_roleVector "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_userRole : JV := (<- JR.call l_roleVector "get_1" #[l_index])
            if JR.truth (<- JR.eq (<- JR.call l_role "compareTo_1" #[(<- JR.call l_userRole "toString_0" #[])]) (JV.int 0)) then
                return l_userRole
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    throw (<- JR.new "Exception" #[(JV.str "Unable to get role - Unknown Role")])


def m_getAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "roleVector")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicUserRoles",
    javaName := "org.allbinary.business.user.role.BasicUserRoles",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("roleVector", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRole_1", #["String"], false, m_getRole_1), 
        ("getAll_0", #[], false, m_getAll_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicUserRoles


