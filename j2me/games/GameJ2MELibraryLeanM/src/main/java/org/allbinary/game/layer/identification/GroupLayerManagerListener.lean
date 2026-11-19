-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GroupLayerManagerListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GroupLayerManagerListener" "SINGLETON" (<- JR.new "GroupLayerManagerListener" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GroupLayerManagerListener" "SINGLETON")


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupList : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_groupList := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
            let _ := (<- JR.call l_groupList "clear_0" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_getGroupSizeFromInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterfaceCompositeInterface : JV := (JR.arg jargs 0)
    let mut l_groupInterfaceArray : JV := (<- JR.call l_groupInterfaceCompositeInterface "getGroupInterface_0" #[])
    return (JR.asI (<- JR.call this "getGroupSize_1" #[(<- JR.aget l_groupInterfaceArray (JV.int 0))]))


def m_getGroupSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.toI (<- JR.call l_groupInterface "getGroupId_0" #[])))
    return (JR.asI (<- JR.call this "getGroupSizeById_1" #[l_id]))


def m_getList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.toI (<- JR.call l_groupInterface "getGroupId_0" #[])))
    return (<- JR.call this "getListById_1" #[l_id])


def m_getListById_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_groupList : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_groupId)
    return l_groupList


def m_getGroupSizeById_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_groupList : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_groupId)
    let mut l_size : JV := (JR.asI (<- JR.call l_groupList "size_0" #[]))
    return (JR.asI l_size)


def m_areAllOtherGroupsEmpty_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.toI (<- JR.call l_groupInterface "getGroupId_0" #[])))
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.ne l_id l_index) then
                let mut l_groupSize : JV := (JR.asI (<- JR.call this "getGroupSizeById_1" #[l_index]))
                if JR.truth (<- JR.ne l_groupSize (JV.int 0)) then
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Group Size: ")]) "appendint_1" #[l_groupSize]) "toString_0" #[]), this, (JV.str "areAllOtherGroupsEmpty")])
                    return (JV.bool false)
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool true)


def m_isIdInList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_excludeGroupList : JV := (JR.arg jargs 1)
    let mut l_size : JV := (JR.asI (<- JR.call l_excludeGroupList "size_0" #[]))
    let mut l_groupInterfaceArray : JV := JV.null
    let mut l_groupInterface : JV := JV.null
    let mut l_groupId : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_groupInterfaceArray := (<- JR.aget (<- JR.getField l_excludeGroupList "objectArray") l_index)
            let mut l_size2 : JV := (JR.asI (<- JR.alen l_groupInterfaceArray))
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size2)) then break
                    l_groupInterface := (<- JR.aget l_groupInterfaceArray l_index2)
                    l_groupId := (JR.asI (JR.toI (<- JR.call l_groupInterface "getGroupId_0" #[])))
                    if JR.truth (<- JR.eq l_groupId l_id) then
                        return (JV.bool true)
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool false)


def m_areAllOtherGroupsLessThan_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_excludeGroupList : JV := (JR.arg jargs 0)
    let mut l_maxSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (JR.not (<- JR.call this "isIdInList_2" #[l_index, l_excludeGroupList])) then
                let mut l_groupSize : JV := (JR.asI (<- JR.call this "getGroupSizeById_1" #[l_index]))
                if JR.truth (<- JR.ge l_groupSize l_maxSize) then
                    return (JV.bool false)
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool true)


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    repeat
        if !(JR.truth (<- JR.le (<- JR.call (<- JR.getField this "list") "size_0" #[]) (<- JR.add l_total (JV.int 1)))) then break
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.new "BasicArrayListD" #[])])
        pure ()
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onCreateLayerManagerEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (<- JR.call l_layerManagerEvent "getLayerInterface_0" #[])
    let mut l_groupInterfaceArray : JV := (<- JR.call l_layerInterface "getGroupInterface_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_groupInterfaceArray))
    let mut l_id : JV := (JR.asI (JV.int 0))
    let mut l_groupList : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_id := (JR.asI (JR.toI (<- JR.call (<- JR.aget l_groupInterfaceArray l_index) "getGroupId_0" #[])))
            l_groupList := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_id)
            if JR.truth (<- JR.eq l_groupList JV.null) then
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "id: ")]) "appendint_1" #[l_id]) "toString_0" #[]), this, (JV.str "onCreateLayerManagerEvent")])
                pure ()
            if JR.truth (JR.not (<- JR.call l_groupList "contains_1" #[l_layerInterface])) then
                let _ := (<- JR.call l_groupList "add_1" #[l_layerInterface])
                pure ()
            else
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_onDeleteLayerManagerEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (<- JR.call l_layerManagerEvent "getLayerInterface_0" #[])
    let mut l_groupInterfaceArray : JV := (<- JR.call l_layerInterface "getGroupInterface_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen l_groupInterfaceArray))
    let mut l_id : JV := (JR.asI (JV.int 0))
    let mut l_groupList : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_id := (JR.asI (JR.toI (<- JR.call (<- JR.aget l_groupInterfaceArray l_index) "getGroupId_0" #[])))
            l_groupList := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_id)
            let _ := (<- JR.call l_groupList "remove_1" #[l_layerInterface])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_log_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_GROUP : JV := (JV.str "Group: ")
    let mut l_SPACE : JV := (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")
    let mut l_TOTAL_LABEL : JV := (<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "TOTAL_LABEL")
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_groupList : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_GROUP])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SPACE])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_TOTAL_LABEL])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_groupList "size_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SPACE])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "log")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerManagerEventListener" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callStatic "LayerManagerEventHandler" "getInstance_0" #[]) "addListener_1" #[this])
    pure this

initialize JR.registerClass {
    name := "GroupLayerManagerListener",
    javaName := "org.allbinary.game.layer.identification.GroupLayerManagerListener",
    super := "LayerManagerEventListener",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("list", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("getGroupSizeFromInterface_1", #["GroupInterfaceCompositeInterface"], false, m_getGroupSizeFromInterface_1), 
        ("getGroupSize_1", #["Group"], false, m_getGroupSize_1), 
        ("getList_1", #["Group"], false, m_getList_1), 
        ("getListById_1", #["int"], false, m_getListById_1), 
        ("getGroupSizeById_1", #["int"], false, m_getGroupSizeById_1), 
        ("areAllOtherGroupsEmpty_1", #["Group"], false, m_areAllOtherGroupsEmpty_1), 
        ("isIdInList_2", #["int", "BasicArrayList"], false, m_isIdInList_2), 
        ("areAllOtherGroupsLessThan_2", #["BasicArrayList", "int"], false, m_areAllOtherGroupsLessThan_2), 
        ("init_1", #["int"], false, m_init_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onCreateLayerManagerEvent_1", #["LayerManagerEvent"], false, m_onCreateLayerManagerEvent_1), 
        ("onDeleteLayerManagerEvent_1", #["LayerManagerEvent"], false, m_onDeleteLayerManagerEvent_1), 
        ("log_0", #[], false, m_log_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GroupLayerManagerListener


