-- Generated Code Do Not Modify
-- package org.allbinary.game.paint.help
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UpdateMyFontProperties

def jfields (this : JV) : JM JV := do
    JR.setField this "actionStringArray" (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])
    JR.setField this "keymappingBeginWidthArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")
    JR.setField this "actionStringDeltaXArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")
    JR.setField this "inputDeltaXArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY")
    JR.setField this "sepArray" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "ONE_EMPTY_STRING_ARRAY_OF_ARRAYS")
    JR.setField this "sepWidthArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "UpdateMyFontProperties",
    javaName := "org.allbinary.game.paint.help.UpdateMyFontProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("actionStringArray", JV.null), ("keymappingBeginWidthArray", JV.null), ("actionStringDeltaXArray", JV.null), ("inputDeltaXArray", JV.null), ("sepArray", JV.null), ("sepWidthArray", JV.null), ("charHeight", (JV.int 0))],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UpdateMyFontProperties


