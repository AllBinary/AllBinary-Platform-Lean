-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CheatGameInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "PROCESS_GAME" (JV.str "processGame")
    JR.setField this "gameKeyFactory" (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CheatGameInputProcessor" "inputProcessor" (<- JR.getStatic "SpecialGameInputFactory" "NO_SPECIAL_GAME_INPUT")
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_gameLayerManager : JV := (<- JR.call (<- JR.getField this "gameCanvas") "getLayerManager_0" #[])
        let mut l_list : JV := (<- JR.callInherited this "CheatGameInputProcessor" "getGameKeyEventList_0" #[])
        let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let mut l_anyType : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                let mut l_key : JV := (JR.asI (<- JR.callStatic "GameKeyEventUtil" "getKey_1" #[l_anyType]))
                if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEVEL_DOWN") "getId_0" #[])) then
                    let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "strafeLeft_0" #[])
                    break
                else
                    if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEVEL_UP") "getId_0" #[])) then
                        let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "strafeRight_0" #[])
                        break
                if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEFT") "getId_0" #[])) then
                    let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "left_0" #[])
                    break
                else
                    if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "RIGHT") "getId_0" #[])) then
                        let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "right_0" #[])
                        break
                    else
                        if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "UP") "getId_0" #[])) then
                            let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "up_0" #[])
                            break
                        else
                            if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "DOWN") "getId_0" #[])) then
                                let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "down_0" #[])
                                break
                            else
                                if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM1") "getId_0" #[])) then
                                    let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "special1_2" #[l_gameLayerManager, (<- JR.getStatic "GameKeyEvent" "NONE")])
                                    break
                                else
                                    if JR.truth (<- JR.eq l_key (<- JR.call (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM3") "getId_0" #[])) then
                                        let _ := (<- JR.call (<- JR.getStatic "CheatGameInputProcessor" "inputProcessor") "special2_2" #[l_gameLayerManager, (<- JR.getStatic "GameKeyEvent" "NONE")])
                                        break
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let _ := (<- JR.call l_list "clear_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "CheatGameInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "CheatGameInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "CheatGameInputProcessor" "commonStrings") "UPDATE"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "PlayerGameInput" this #[(<- JR.new "BasicArrayListD" #[]), (<- JR.new "BasicArrayListD" #[]), (JV.int (-1))]
    let _ <- jfields this
    JR.setField this "gameCanvas" l_gameCanvas
    pure this

initialize JR.registerClass {
    name := "CheatGameInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.CheatGameInputProcessor",
    super := "PlayerGameInput",
    interfaces := #[],
    isInterface := false,
    fields := #[("PROCESS_GAME", JV.null), ("gameCanvas", JV.null), ("gameKeyFactory", JV.null)],
    statics := #[("inputProcessor", JV.null)],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CheatGameInputProcessor


