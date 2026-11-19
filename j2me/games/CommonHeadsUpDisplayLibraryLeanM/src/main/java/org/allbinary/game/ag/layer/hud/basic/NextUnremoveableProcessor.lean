-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NextUnremoveableProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "updateMeasurementProcessor") "setNextUnremoveableProcess_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_updateMeasurementProcessor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "updateMeasurementProcessor" l_updateMeasurementProcessor
    pure this

initialize JR.registerClass {
    name := "NextUnremoveableProcessor",
    javaName := "org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("updateMeasurementProcessor", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["PlayerGameNotificationHud"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NextUnremoveableProcessor


