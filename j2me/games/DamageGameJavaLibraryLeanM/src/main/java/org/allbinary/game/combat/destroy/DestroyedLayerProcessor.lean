-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyedLayerProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DestroyedLayerProcessor" "DESTROYED_LAYER_PROCESSOR" (<- JR.getStatic "BasicLayerProcessor" "NULL_LAYER_PROCESSOR")
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "DestroyedLayerProcessor" "DESTROYED_LAYER_PROCESSOR" (<- JR.new "DestroyedLayerProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DestroyedLayerProcessor" "DESTROYED_LAYER_PROCESSOR")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_list : JV := (<- JR.callInherited this "DestroyedLayerProcessor" "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_destroyedEventHandler : JV := (<- JR.callStatic "DestroyedEventHandler" "getInstance_0" #[])
    let mut l_destroyEventCircularStaticPool : JV := (<- JR.callStatic "DestroyEventCircularStaticPool" "getInstance_0" #[])
    let mut l_destroyedEvent : JV := JV.null
    let mut l_layerInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_layerInterfaceCanBeNull : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (<- JR.ne l_layerInterfaceCanBeNull JV.null) then
                l_layerInterface := l_layerInterfaceCanBeNull
                let _ := (<- JR.call l_allBinaryLayerManager "remove_1" #[l_layerInterface])
                l_destroyedEvent := (<- JR.call l_destroyEventCircularStaticPool "getInstanceForLayer_1" #[l_layerInterface])
                let _ := (<- JR.call l_destroyedEventHandler "fireEvent_1" #[l_destroyedEvent])
                pure ()
            else
                let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_list "clear_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BasicLayerProcessor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DestroyedLayerProcessor",
    javaName := "org.allbinary.game.combat.destroy.DestroyedLayerProcessor",
    super := "BasicLayerProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("DESTROYED_LAYER_PROCESSOR", JV.null)],
    methods := #[
        ("init_0", #[], true, m_init_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["AllBinaryLayerManager"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyedLayerProcessor


