-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.weapon.mine
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MineLayerFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "MineLayer" #[(<- JR.call (<- JR.getField this "viewPositionFactoryInterface") "getInstance_0" #[])])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_viewPositionFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "viewPositionFactoryInterface" l_viewPositionFactoryInterface
    pure this

initialize JR.registerClass {
    name := "MineLayerFactory",
    javaName := "org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory",
    super := "Object",
    interfaces := #["AllBinaryLayerFactoryInterface"],
    isInterface := false,
    fields := #[("viewPositionFactoryInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_1", #["ViewPositionFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MineLayerFactory


