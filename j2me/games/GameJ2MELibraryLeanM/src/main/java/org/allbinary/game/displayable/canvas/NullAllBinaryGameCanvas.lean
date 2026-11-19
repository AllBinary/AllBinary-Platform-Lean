-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullAllBinaryGameCanvas

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullAllBinaryGameCanvas" "NULL_ALLBINARY_GAME_CANVAS" (<- JR.new "NullAllBinaryGameCanvas" #[])
    pure JV.null


def m_getLayerManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_addCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmd : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_removeCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmd : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_setCommandListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_l : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullAllBinaryGameCanvas",
    javaName := "org.allbinary.game.displayable.canvas.NullAllBinaryGameCanvas",
    super := "Object",
    interfaces := #["AllBinaryGameCanvasInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_ALLBINARY_GAME_CANVAS", JV.null)],
    methods := #[
        ("getLayerManager_0", #[], false, m_getLayerManager_0), 
        ("addCommand_1", #["Command"], false, m_addCommand_1), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("removeCommand_1", #["Command"], false, m_removeCommand_1), 
        ("setCommandListener_1", #["CommandListener"], false, m_setCommandListener_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullAllBinaryGameCanvas


