-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandTextItemArrayFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 2)
    let mut l_vectorUtil : JV := (<- JR.callStatic "VectorUtil" "getInstance_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_vectorUtil "getSize_1" #[l_vector]))
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    let mut l_textItem : JV := JV.null
    let mut l_priorityLimit : JV := (JR.asI (JV.int 7))
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_isLargeEnoughDisplayForBigMenu : JV := (<- JR.cor ((<- JR.cand (<- JR.call l_displayInfo "isPortrait_0" #[]) (do pure (<- JR.ge (<- JR.call l_displayInfo "getLastHeight_0" #[]) (<- JR.getField (<- JR.callStatic "ScreenInfo" "getInstance_0" #[]) "MEDIUM_WIDTH"))))) (do pure ((<- JR.cand (JR.not (<- JR.call l_displayInfo "isPortrait_0" #[])) (do pure (<- JR.ge (<- JR.call l_displayInfo "getLastWidth_0" #[]) (<- JR.getField (<- JR.callStatic "ScreenInfo" "getInstance_0" #[]) "MEDIUM_WIDTH")))))))
    if JR.truth (<- JR.cand (JR.not l_isLargeEnoughDisplayForBigMenu) (do pure (<- JR.gt l_size (JV.int 3)))) then
        l_priorityLimit := (JR.asI (JV.int 3))
        pure ()
    let mut l_command : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_command := (<- JR.call l_vectorUtil "elementAt_2" #[l_vector, l_index])
            if JR.truth (<- JR.lt (<- JR.call l_command "getPriority_0" #[]) l_priorityLimit) then
                let mut l_aBoolean : JV := (<- JR.call (<- JR.getField this "visitorInterface") "visit_1" #[l_command])
                if JR.truth (<- JR.call l_aBoolean "booleanValue_0" #[]) then
                    l_textItem := (<- JR.new "CommandTextItem" #[l_command, (<- JR.getStatic "LcduiImageItem" "LAYOUT_DEFAULT"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), l_backgroundBasicColor, l_foregroundBasicColor])
                    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_textItem])
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_textItemArray : JV := (<- JR.newArray "L" 1 #[(<- JR.call (<- JR.getField this "list") "size_0" #[])])
    let mut l_size2 : JV := (JR.asI (<- JR.alen l_textItemArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size2)) then break
            JR.aset l_textItemArray l_index (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_textItemArray


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_visitorInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "visitorInterface" l_visitorInterface
    pure this

initialize JR.registerClass {
    name := "CommandTextItemArrayFactory",
    javaName := "org.allbinary.graphics.form.item.CommandTextItemArrayFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null), ("visitorInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_3", #["Any", "BasicColor", "BasicColor"], false, m_getInstance_3), 
        ("jinit_1", #["Visitor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandTextItemArrayFactory


