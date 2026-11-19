-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CenterStaticViewPositionFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_z : JV := (JR.asI (JR.arg jargs 0))
    let mut l_displayInfoSingleton : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    return (<- JR.new "StaticViewPosition" #[((<- JR.shr (<- JR.call l_displayInfoSingleton "getLastWidth_0" #[]) (JV.int 1))), ((<- JR.shr (<- JR.call l_displayInfoSingleton "getLastHeight_0" #[]) (JV.int 1))), l_z])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CenterStaticViewPositionFactory",
    javaName := "org.allbinary.view.CenterStaticViewPositionFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CenterStaticViewPositionFactory


