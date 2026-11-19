-- Generated Code Do Not Modify
-- package org.allbinary.game.multiplayer.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RemoteInfo

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RemoteInfo" "REMOTE_INFO" (<- JR.new "RemoteInfo" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.int (-1)), (JV.int (-1)), (<- JR.getStatic "RemoteInfo" "NEW_PLAYER_ID")])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_username : JV := (JR.arg jargs 0)
    let mut l_actorSessionId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_id : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RemoteInfo",
    javaName := "org.allbinary.game.multiplayer.layer.RemoteInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NEW_PLAYER_ID", (JR.asI (JV.int 0))), ("REMOTE_INFO", JV.null)],
    methods := #[
        ("jinit_4", #["String", "int", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RemoteInfo


