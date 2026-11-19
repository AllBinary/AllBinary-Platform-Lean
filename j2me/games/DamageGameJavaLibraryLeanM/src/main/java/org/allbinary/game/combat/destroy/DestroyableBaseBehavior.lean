-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyableBaseBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DestroyableBaseBehavior" "instance" (<- JR.new "DestroyableBaseBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DestroyableBaseBehavior" "instance")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callInherited this "DestroyableBaseBehavior" "getClass_0" #[]) "getName_0" #[])


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "NOT_IMPLEMENTED")])


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DestroyableBaseBehavior",
    javaName := "org.allbinary.game.combat.destroy.DestroyableBaseBehavior",
    super := "Object",
    interfaces := #["DestroyableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyableBaseBehavior


