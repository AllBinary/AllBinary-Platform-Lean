-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SingleLayerLayerProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_layerManager : JV := (<- JR.callInherited this "SingleLayerLayerProcessor" "getLayerManager_0" #[])
    let _ := (<- JR.callInherited this "SingleLayerLayerProcessor" "processAt_3" #[l_allBinaryLayerManager, (<- JR.call l_layerManager "getLayerAt_1" #[(JV.int 0)]), (JV.int 0)])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerProcessor" this #[(<- JR.new "SingleLayerLayerManager" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SingleLayerLayerProcessor",
    javaName := "org.allbinary.layer.SingleLayerLayerProcessor",
    super := "LayerProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_1", #["AllBinaryLayerManager"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SingleLayerLayerProcessor


