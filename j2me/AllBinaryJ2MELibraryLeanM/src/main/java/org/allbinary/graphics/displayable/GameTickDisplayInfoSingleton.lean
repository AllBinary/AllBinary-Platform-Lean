-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameTickDisplayInfoSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "lastWidth" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]))
    JR.setField this "lastHeight" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHeight_0" #[]))
    JR.setField this "lastHalfWidth" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]))
    JR.setField this "lastHalfHeight" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfHeight_0" #[]))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameTickDisplayInfoSingleton" "instance" (<- JR.new "GameTickDisplayInfoSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameTickDisplayInfoSingleton" "instance")


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "lastWidth" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]))
    JR.setField this "lastHeight" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHeight_0" #[]))
    JR.setField this "lastHalfWidth" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]))
    JR.setField this "lastHalfHeight" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfHeight_0" #[]))
    pure JV.null


def m_getLastWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lastWidth"))


def m_getLastHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lastHeight"))


def m_getLastHalfWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lastHalfWidth"))


def m_getLastHalfHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lastHalfHeight"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameTickDisplayInfoSingleton",
    javaName := "org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("lastWidth", (JV.int 0)), ("lastHeight", (JV.int 0)), ("lastHalfWidth", (JV.int 0)), ("lastHalfHeight", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("update_0", #[], false, m_update_0), 
        ("getLastWidth_0", #[], false, m_getLastWidth_0), 
        ("getLastHeight_0", #[], false, m_getLastHeight_0), 
        ("getLastHalfWidth_0", #[], false, m_getLastHalfWidth_0), 
        ("getLastHalfHeight_0", #[], false, m_getLastHalfHeight_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameTickDisplayInfoSingleton


