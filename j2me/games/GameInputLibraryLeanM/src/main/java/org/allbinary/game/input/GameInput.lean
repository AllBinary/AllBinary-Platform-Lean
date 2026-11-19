-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInput

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.cand (<- JR.getField this "isRemoveDuplicateKeyPresses") (do pure (<- JR.call (<- JR.getField this "gameKeyEventList") "contains_1" #[l_gameKeyEvent]))) then
        return JV.null
    if JR.truth (<- JR.ne l_gameKeyEvent JV.null) then
        let _ := (<- JR.call (<- JR.getField this "gameKeyEventList") "add_1" #[l_gameKeyEvent])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Danger Passed Null GameKeyEvent"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
        pure ()
    pure JV.null


def m_addForRemoval_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "removalGameKeyEventList") "add_1" #[l_gameKeyEvent])
    pure JV.null


def m_isForRemoval_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "removalGameKeyEventList") "contains_1" #[l_gameKeyEvent])


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "gameKeyEventList") "clear_0" #[])
    pure JV.null


def m_removeNonAIInputGameKeyEvents_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.getField this "gameKeyEventList")
    let mut l_gameKeyEvent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            l_gameKeyEvent := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            if JR.truth (<- JR.ne (<- JR.call l_gameKeyEvent "getSourceId_0" #[]) (JV.int 1)) then
                let _ := (<- JR.call l_list "removeAt_1" #[l_index])
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_removeList : JV := (<- JR.getField this "removalGameKeyEventList")
    let mut l_list : JV := (<- JR.getField this "gameKeyEventList")
    let mut l_size : JV := (JR.asI (<- JR.call l_removeList "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_anyType : JV := (<- JR.aget (<- JR.getField l_removeList "objectArray") l_index)
            if true then
                let mut l_index2 : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
                repeat
                    let jtemp4 : JV := (JR.dec l_index2)
                    l_index2 := jtemp4
                    
                    if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
                    if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField l_list "objectArray") l_index2) l_anyType) then
                        let _ := (<- JR.call l_list "removeAt_1" #[l_index2])
                        pure ()
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_removeList "clear_0" #[])
    pure JV.null


def m_getRemovalGameKeyEventList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "removalGameKeyEventList")


def m_getGameKeyEventList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKeyEventList")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_removalGameKeyEventList : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "gameKeyEventList" l_gameKeyEventList
    JR.setField this "removalGameKeyEventList" l_removalGameKeyEventList
    JR.setField this "isRemoveDuplicateKeyPresses" (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "REMOVE_DUPLICATE_KEY_PRESSES")])
    pure this

initialize JR.registerClass {
    name := "GameInput",
    javaName := "org.allbinary.game.input.GameInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("gameKeyEventList", JV.null), ("removalGameKeyEventList", JV.null), ("isRemoveDuplicateKeyPresses", (JV.bool false))],
    statics := #[],
    methods := #[
        ("add_1", #["GameKeyEvent"], false, m_add_1), 
        ("addForRemoval_1", #["GameKeyEvent"], false, m_addForRemoval_1), 
        ("isForRemoval_1", #["GameKeyEvent"], false, m_isForRemoval_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("removeNonAIInputGameKeyEvents_0", #[], false, m_removeNonAIInputGameKeyEvents_0), 
        ("update_0", #[], false, m_update_0), 
        ("getRemovalGameKeyEventList_0", #[], false, m_getRemovalGameKeyEventList_0), 
        ("getGameKeyEventList_0", #[], false, m_getGameKeyEventList_0), 
        ("jinit_2", #["BasicArrayList", "BasicArrayList"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInput


