-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreCommandsBaseFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isHighScoreCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "HIGH_SCORE_COMMANDS")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.eq l_command (<- JR.aget (<- JR.getField this "HIGH_SCORE_COMMANDS") l_index)) then
                return (JV.bool true)
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool false)


def m_getIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "HIGH_SCORE_COMMANDS")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.eq l_command (<- JR.aget (<- JR.getField this "HIGH_SCORE_COMMANDS") l_index)) then
                return (JR.asI l_index)
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    throw (<- JR.new "Exception" #[(JV.str "No Such Command")])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_HIGH_SCORE_COMMANDS : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "HIGH_SCORE_COMMANDS" l_HIGH_SCORE_COMMANDS
    pure this

initialize JR.registerClass {
    name := "HighScoreCommandsBaseFactory",
    javaName := "org.allbinary.game.score.HighScoreCommandsBaseFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("HIGH_SCORE_COMMANDS", JV.null)],
    statics := #[],
    methods := #[
        ("isHighScoreCommand_1", #["Command"], false, m_isHighScoreCommand_1), 
        ("getIndex_1", #["Command"], false, m_getIndex_1), 
        ("jinit_1", #["CommandArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreCommandsBaseFactory


