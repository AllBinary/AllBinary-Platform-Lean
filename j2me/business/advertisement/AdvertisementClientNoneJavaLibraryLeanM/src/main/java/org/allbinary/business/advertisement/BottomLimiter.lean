-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BottomLimiter

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BottomLimiter" "instance" (<- JR.new "BottomLimiter" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BottomLimiter" "instance")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lower : JV := (JR.asI (JR.arg jargs 0))
    let mut l_higher : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "lower" (JR.asI l_lower)
    JR.setField this "higher" (JR.asI l_higher)
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_gameAdState : JV := (<- JR.call (<- JR.callStatic "GameAdStateFactory" "getInstance_0" #[]) "getCurrentInstance_0" #[])
    if JR.truth (<- JR.call l_gameAdState "isShowingAt_0" #[]) then
        JR.setField this "deltaY" (JR.asI (<- JR.getField this "higher"))
        pure ()
    else
        JR.setField this "deltaY" (JR.asI (<- JR.getField this "lower"))
        pure ()
    JR.setField this "bottom" (JR.asI (<- JR.sub (<- JR.call l_displayInfo "getLastHeight_0" #[]) (<- JR.getField this "deltaY")))
    pure JV.null


def m_getDeltaY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "deltaY"))


def m_getBottom_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "bottom"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BottomLimiter",
    javaName := "org.allbinary.business.advertisement.BottomLimiter",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("bottom", (JV.int 0)), ("deltaY", (JV.int 0)), ("lower", (JV.int 0)), ("higher", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_2", #["int", "int"], false, m_init_2), 
        ("update_0", #[], false, m_update_0), 
        ("getDeltaY_0", #[], false, m_getDeltaY_0), 
        ("getBottom_0", #[], false, m_getBottom_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BottomLimiter


