-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyEventFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "DestroyedEvent" #[(<- JR.getField this "combatGameCanvas")])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_combatGameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "combatGameCanvas" l_combatGameCanvas
    pure this

initialize JR.registerClass {
    name := "DestroyEventFactory",
    javaName := "org.allbinary.game.combat.destroy.event.DestroyEventFactory",
    super := "Object",
    interfaces := #["AllBinaryEventObjectFactoryInterface"],
    isInterface := false,
    fields := #[("combatGameCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyEventFactory


