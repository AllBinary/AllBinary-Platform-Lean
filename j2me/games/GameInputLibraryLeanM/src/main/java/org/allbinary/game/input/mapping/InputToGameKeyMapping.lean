-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputToGameKeyMapping

def jfields (this : JV) : JM JV := do
    JR.setField this "gameKeyFactory" (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    JR.setField this "mappedGameKeys" (<- JR.arrayOf "L" #[(<- JR.getField (<- JR.getField this "gameKeyFactory") "UP"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "DOWN"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEFT"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "RIGHT")])
    JR.setField this "platformToGameKeyMapping" (<- JR.newArray "L" 1 #[(<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX")])
    JR.setField this "negativePlatformToGameKeyMapping" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InputToGameKeyMapping" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "InputToGameKeyMapping" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "InputToGameKeyMapping" "instance" (<- JR.new "InputToGameKeyMapping" #[])
        pure ()
    return (<- JR.getStatic "InputToGameKeyMapping" "instance")


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "platformToGameKeyMapping")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "platformToGameKeyMapping") l_index (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_removeAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "InputMapping" this "removeAll_0" #[])
    let _ := (<- JR.call this "clear_0" #[])
    pure JV.null


def m_addMapping_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_inputToGameKeyMapping "getMaxMappable_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_input : JV := (<- JR.call l_inputToGameKeyMapping "getInstance_1" #[l_index])
            if JR.truth (<- JR.ne l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")) then
                let _ := (<- JR.call this "addAll_2" #[l_input, (<- JR.call l_inputToGameKeyMapping "getMappedInput_1" #[l_input])])
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_addAll_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_list : JV := (JR.arg jargs 1)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_mappedToInput : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call this "add_2" #[l_input, l_mappedToInput])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_mappedToInput : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "InputMapping" this "add_2" #[l_input, l_mappedToInput])
    let _ := (<- JR.call this "set_2" #[l_input, l_mappedToInput])
    pure JV.null


def m_remove_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_mappedToInput : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getInherited this "InputToGameKeyMapping" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_input])]) "append_1" #[(JV.str " == ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_mappedToInput])]) "toString_0" #[]), this, (JV.str "InputToGameKeyMapping::remove")])
    let _ := (<- JR.callSuper "InputMapping" this "remove_2" #[l_input, l_mappedToInput])
    let _ := (<- JR.call this "set_2" #[l_input, (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")])
    pure JV.null


def m_set_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_mappedToInput : JV := (JR.arg jargs 1)
    let mut l_id : JV := (JR.asI (<- JR.call l_mappedToInput "getId_0" #[]))
    if JR.truth (<- JR.cand (<- JR.ge l_id (JV.int 0)) (do pure (<- JR.lt l_id (<- JR.alen (<- JR.getField this "platformToGameKeyMapping"))))) then
        JR.aset (<- JR.getField this "platformToGameKeyMapping") l_id l_input
        pure ()
    pure JV.null


def m_getMaxMappable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.alen (<- JR.getField this "platformToGameKeyMapping")))


def m_getReverseInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "platformToGameKeyMapping")))) then break
            if JR.truth (<- JR.eq (<- JR.call (<- JR.aget (<- JR.getField this "platformToGameKeyMapping") l_index) "getId_0" #[]) l_id) then
                let mut l_input : JV := (<- JR.call l_inputFactory "getInstanceById_1" #[l_index])
                if JR.truth (<- JR.ne l_input JV.null) then
                    let _ := (<- JR.call l_list "add_1" #[l_input])
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_list


def m_initGameKey_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_gameKey : JV := (JR.arg jargs 1)
    let mut l_key : JV := (JR.asI (<- JR.call l_canvas "getKeyCode_1" #[(<- JR.call l_gameKey "getId_0" #[])]))
    if JR.truth (<- JR.cand (<- JR.lt l_key (JV.int 0)) (do pure (<- JR.lt (JR.neg l_key) (<- JR.alen (<- JR.getField this "negativePlatformToGameKeyMapping"))))) then
        JR.aset (<- JR.getField this "negativePlatformToGameKeyMapping") (JR.neg l_key) l_gameKey
        pure ()
    else
        if JR.truth (<- JR.gt l_key (JV.int 0)) then
            if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "platformToGameKeyMapping") l_key) (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")) then
                JR.aset (<- JR.getField this "platformToGameKeyMapping") l_key l_gameKey
                pure ()
            pure ()
        else
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call l_gameKey "toString_0" #[])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON_SEP")]) "appendint_1" #[l_key]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputToGameKeyMapping" "commonStrings") "INIT"), (<- JR.new "Exception" #[])])
            pure ()
    pure JV.null


def m_getSmallestCanvasGameKeyCode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_nextKey : JV := (JR.asI (JV.int 0))
    let mut l_smallestKey : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "mappedGameKeys")))
        repeat
            let jtemp17 : JV := (JR.dec l_index)
            l_index := jtemp17
            
            if !(JR.truth (<- JR.ge jtemp17 (JV.int 0))) then break
            l_nextKey := (JR.asI (<- JR.call l_canvas "getKeyCode_1" #[(<- JR.call (<- JR.aget (<- JR.getField this "mappedGameKeys") l_index) "getId_0" #[])]))
            if JR.truth (<- JR.lt l_nextKey l_smallestKey) then
                l_smallestKey := (JR.asI l_nextKey)
                pure ()
            pure ()
        pure ()
    return (JR.asI l_smallestKey)


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    try
        let mut l_negativePlatformToGameKeyMapping : JV := (<- JR.newArray "L" 1 #[(JV.int 0)])
        let mut l_smallestKey : JV := (JR.asI (<- JR.call this "getSmallestCanvasGameKeyCode_1" #[l_canvas]))
        if JR.truth (<- JR.lt l_smallestKey (JV.int 0)) then
            l_smallestKey := (JR.dec l_smallestKey)
            if JR.truth (<- JR.lt l_smallestKey (JV.int (-256))) then
                l_smallestKey := (JR.asI (JV.int (-256)))
                pure ()
            l_negativePlatformToGameKeyMapping := (<- JR.newArray "L" 1 #[(JR.neg l_smallestKey)])
            if true then
                let mut l_index : JV := (JR.asI (<- JR.alen l_negativePlatformToGameKeyMapping))
                repeat
                    let jtemp18 : JV := (JR.dec l_index)
                    l_index := jtemp18
                    
                    if !(JR.truth (<- JR.ge jtemp18 (JV.int 0))) then break
                    JR.aset l_negativePlatformToGameKeyMapping l_index (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")
                    pure ()
                pure ()
            JR.setField this "negativePlatformToGameKeyMapping" l_negativePlatformToGameKeyMapping
            pure ()
        if true then
            let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "mappedGameKeys")))
            repeat
                let jtemp19 : JV := (JR.dec l_index)
                l_index := jtemp19
                
                if !(JR.truth (<- JR.ge jtemp19 (JV.int 0))) then break
                let _ := (<- JR.call this "initGameKey_2" #[l_canvas, (<- JR.aget (<- JR.getField this "mappedGameKeys") l_index)])
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Throwable"]) then
            let mut l_t : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "InputToGameKeyMapping" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "InputToGameKeyMapping" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "InputToGameKeyMapping" "commonStrings") "INIT"), l_t])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getInstanceForCanvas_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.cand (<- JR.ge l_id (JV.int 0)) (do pure (<- JR.lt l_id (<- JR.alen (<- JR.getField this "platformToGameKeyMapping"))))) then
        return (<- JR.aget (<- JR.getField this "platformToGameKeyMapping") l_id)
    else
        if JR.truth (<- JR.cand (<- JR.lt l_id (JV.int 0)) (do pure (<- JR.lt (JR.neg l_id) (<- JR.alen (<- JR.getField this "negativePlatformToGameKeyMapping"))))) then
            return (<- JR.aget (<- JR.getField this "negativePlatformToGameKeyMapping") (JR.neg l_id))
        else
            return (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cand (<- JR.ge l_id (JV.int 0)) (do pure (<- JR.lt l_id (<- JR.alen (<- JR.getField this "platformToGameKeyMapping"))))) then
        return (<- JR.aget (<- JR.getField this "platformToGameKeyMapping") l_id)
    else
        if JR.truth (<- JR.cand (<- JR.lt l_id (JV.int 0)) (do pure (<- JR.lt (JR.neg l_id) (<- JR.alen (<- JR.getField this "negativePlatformToGameKeyMapping"))))) then
            return (<- JR.aget (<- JR.getField this "negativePlatformToGameKeyMapping") (JR.neg l_id))
        else
            return (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "InputMapping" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "InputToGameKeyMapping" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "InputToGameKeyMapping" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "InputToGameKeyMapping" "commonStrings") "CONSTRUCTOR")])
    let _ := (<- JR.call this "clear_0" #[])
    pure this

initialize JR.registerClass {
    name := "InputToGameKeyMapping",
    javaName := "org.allbinary.game.input.mapping.InputToGameKeyMapping",
    super := "InputMapping",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameKeyFactory", JV.null), ("mappedGameKeys", JV.null), ("platformToGameKeyMapping", JV.null), ("negativePlatformToGameKeyMapping", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("removeAll_0", #[], false, m_removeAll_0), 
        ("addMapping_1", #["InputToGameKeyMapping"], false, m_addMapping_1), 
        ("addAll_2", #["Input", "BasicArrayList"], false, m_addAll_2), 
        ("add_2", #["Input", "Input"], false, m_add_2), 
        ("remove_2", #["Input", "Input"], false, m_remove_2), 
        ("set_2", #["Input", "Input"], false, m_set_2), 
        ("getMaxMappable_0", #[], false, m_getMaxMappable_0), 
        ("getReverseInstance_1", #["int"], false, m_getReverseInstance_1), 
        ("initGameKey_2", #["Canvas", "GameKey"], false, m_initGameKey_2), 
        ("getSmallestCanvasGameKeyCode_1", #["Canvas"], false, m_getSmallestCanvasGameKeyCode_1), 
        ("init_1", #["Canvas"], false, m_init_1), 
        ("getInstanceForCanvas_2", #["Canvas", "int"], false, m_getInstanceForCanvas_2), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputToGameKeyMapping


