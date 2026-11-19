-- Generated Code Do Not Modify
-- package org.allbinary.game.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABToGBUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "abCanvas" (<- JR.getStatic "NullCanvas" "NULL_CANVAS")
    JR.setField this "allBinaryGameLayerManager" (<- JR.callStatic "AllBinaryGameLayerManager" "getNullInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ABToGBUtil" "instance" (<- JR.new "ABToGBUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ABToGBUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABToGBUtil",
    javaName := "org.allbinary.game.canvas.ABToGBUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("abCanvas", JV.null), ("allBinaryGameLayerManager", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABToGBUtil


