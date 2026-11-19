-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerQueue

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sound : JV := (JR.arg jargs 0)
    try
        if JR.truth (JR.not (<- JR.call (<- JR.getField this "list") "contains_1" #[l_sound])) then
            let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_sound])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
            pure ()
        else
            throw jex0
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sound : JV := (<- JR.callStatic "NoSound" "getInstance_0" #[])
    try
        let mut l_played : JV := (JV.bool false)
        if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "list") "size_0" #[]) (JV.int 0)) then
            l_sound := (<- JR.call (<- JR.getField this "list") "removeAt_1" #[(JV.int 0)])
            if JR.truth (<- JR.ne l_sound JV.null) then
                let _ := (<- JR.call (<- JR.call l_sound "getPlayerP_0" #[]) "start_0" #[])
                pure ()
            repeat
                if !(JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "list") "size_0" #[]) (<- JR.getField this "max"))) then break
                let _ := (<- JR.call (<- JR.getField this "list") "removeAt_1" #[(JV.int 0)])
                pure ()
            l_played := (JV.bool true)
            pure ()
        return l_played
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_resource : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
            if JR.truth (<- JR.ne l_sound JV.null) then
                l_resource := (<- JR.call l_sound "getResource_0" #[])
                pure ()
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION_LABEL")]) "append_1" #[l_resource]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "PROCESS")])
            return (JV.bool false)
        else
            throw jex1
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getStatic "PlayerQueue" "TOTAL")]) "appendint_1" #[(<- JR.call (<- JR.getField this "list") "size_0" #[])]) "toString_0" #[])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_max : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "max" (JR.asI l_max)
    pure this

initialize JR.registerClass {
    name := "PlayerQueue",
    javaName := "org.allbinary.media.audio.PlayerQueue",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("list", JV.null), ("max", (JV.int 0))],
    statics := #[("TOTAL", (JV.str "Sounds In Queue: "))],
    methods := #[
        ("add_1", #["Sound"], false, m_add_1), 
        ("process_0", #[], false, m_process_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerQueue


