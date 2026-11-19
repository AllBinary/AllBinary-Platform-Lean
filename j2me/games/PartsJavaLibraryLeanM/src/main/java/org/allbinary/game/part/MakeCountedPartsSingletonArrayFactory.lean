-- Generated Code Do Not Modify
-- package org.allbinary.game.part
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MakeCountedPartsSingletonArrayFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MakeCountedPartsSingletonArrayFactory" "instance" (<- JR.new "MakeCountedPartsSingletonArrayFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MakeCountedPartsSingletonArrayFactory" "instance")


def m_getUpdated_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_partInterfaceArray : JV := (JR.arg jargs 0)
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_partInterfaceArray))) then break
            let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.aget l_partInterfaceArray l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_countedBasicArrayList : JV := (<- JR.call (<- JR.callStatic "CountedPickedUpLayerInterfaceFactoryPool" "getInstance_0" #[]) "getList_0" #[])
    let mut l_layerInterfaceFactoryInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_countedBasicArrayList "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_layerInterfaceFactoryInterface := (<- JR.aget (<- JR.getField l_countedBasicArrayList "objectArray") l_index)
            let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.new "CountedLayerInterfaceFactoryPart" #[(JV.int 0), l_layerInterfaceFactoryInterface])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Total Parts: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getField this "list") "size_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Counted: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_countedBasicArrayList "size_0" #[])])
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "GET_INSTANCE")])
    let mut l_newPartInterfaceArray : JV := (<- JR.newArray "L" 1 #[(<- JR.call (<- JR.getField this "list") "size_0" #[])])
    let mut l_newSize : JV := (JR.asI (<- JR.alen l_newPartInterfaceArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_newSize)) then break
            JR.aset l_newPartInterfaceArray l_index (<- JR.call (<- JR.getField this "list") "get_1" #[l_index])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_newPartInterfaceArray


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MakeCountedPartsSingletonArrayFactory",
    javaName := "org.allbinary.game.part.MakeCountedPartsSingletonArrayFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getUpdated_1", #["PartInterfaceArr"], false, m_getUpdated_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MakeCountedPartsSingletonArrayFactory


