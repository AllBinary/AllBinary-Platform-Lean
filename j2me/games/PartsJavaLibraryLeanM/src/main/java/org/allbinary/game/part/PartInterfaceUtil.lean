-- Generated Code Do Not Modify
-- package org.allbinary.game.part
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PartInterfaceUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PartInterfaceUtil" "SINGLETON" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null


def m_getZeroArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PartInterfaceUtil" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PartInterfaceUtil",
    javaName := "org.allbinary.game.part.PartInterfaceUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getZeroArray_0", #[], true, m_getZeroArray_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PartInterfaceUtil


