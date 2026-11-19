-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerStateUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "UNREALIZED" (JV.str "UNREALIZED")
    JR.setField this "REALIZED" (JV.str "REALIZED")
    JR.setField this "PREFETCHED" (JV.str "PREFETCHED")
    JR.setField this "STARTED" (JV.str "STARTED")
    JR.setField this "CLOSED" (JV.str "CLOSED")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlayerStateUtil" "instance" (<- JR.new "PlayerStateUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlayerStateUtil" "instance")


def m_convert_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_state (<- JR.getStatic "Player" "UNREALIZED")) then
        return (<- JR.getField this "UNREALIZED")
    else
        if JR.truth (<- JR.eq l_state (<- JR.getStatic "Player" "REALIZED")) then
            return (<- JR.getField this "REALIZED")
        else
            if JR.truth (<- JR.eq l_state (<- JR.getStatic "Player" "PREFETCHED")) then
                return (<- JR.getField this "PREFETCHED")
            else
                if JR.truth (<- JR.eq l_state (<- JR.getStatic "Player" "STARTED")) then
                    return (<- JR.getField this "STARTED")
                else
                    if JR.truth (<- JR.eq l_state (<- JR.getStatic "Player" "CLOSED")) then
                        return (<- JR.getField this "CLOSED")
    return (<- JR.getField (<- JR.getField this "commonStrings") "UNKNOWN")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlayerStateUtil",
    javaName := "org.allbinary.media.audio.PlayerStateUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("UNREALIZED", JV.null), ("REALIZED", JV.null), ("PREFETCHED", JV.null), ("STARTED", JV.null), ("CLOSED", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("convert_1", #["int"], false, m_convert_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerStateUtil


