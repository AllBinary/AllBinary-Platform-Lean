-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IconLayerFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "IconLayer" #[l_animationInterface, l_width, l_height])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "IconLayerFactory",
    javaName := "org.allbinary.game.layer.pickup.IconLayerFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_3", #["Animation", "int", "int"], true, m_getInstance_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IconLayerFactory


