-- Generated Code Do Not Modify
-- package org.allbinary.direction
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DirectionFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME" (JV.str "DIRECTION")
    JR.setField this "LEFT" (<- JR.new "Direction" #[(<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "LEFT"), (JV.str "WEST"), (JV.int 0), (JV.int 1)])
    JR.setField this "RIGHT" (<- JR.new "Direction" #[(<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "RIGHT"), (JV.str "EAST"), (JV.int 1), (JV.int 0)])
    JR.setField this "DOWN" (<- JR.new "Direction" #[(<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "DOWN"), (JV.str "SOUTH"), (JV.int 2), (JV.int 0)])
    JR.setField this "UP" (<- JR.new "Direction" #[(<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "UP"), (JV.str "NORTH"), (JV.int 3), (JV.int 0)])
    JR.setField this "NOT_BORDERED_WITH" (<- JR.new "Direction" #[(JV.str "NOT_BORDERED_WITH"), (JV.str "NOT_BORDERED_WITH"), (JV.int 8), (JV.int 0)])
    JR.setField this "NO_DIRECTION" (<- JR.new "Direction" #[(JV.str "NO_DIRECTION"), (JV.str "NO_DIRECTION"), (JV.int 9), (JV.int 0)])
    JR.setField this "TOP" (<- JR.new "Direction" #[(JV.str "TOP"), (JV.str "TOP"), (JV.int 10), (JV.int 0)])
    JR.setField this "BOTTOM" (<- JR.new "Direction" #[(JV.str "BOTTOM"), (JV.str "BOTTOM"), (JV.int 11), (JV.int 0)])
    JR.setField this "ALL_DIRECTION" (<- JR.new "Direction" #[(JV.str "ALL_DIRECTION"), (JV.str "ALL_DIRECTION"), (JV.int 12), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DirectionFactory" "instance" (<- JR.new "DirectionFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DirectionFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "UP_LEFT" (<- JR.new "Direction" #[(JV.str "UP LEFT"), (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "UP") "getOtherName_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.call (<- JR.getField this "LEFT") "getOtherName_0" #[])]) "toString_0" #[]), (JV.int 4), (JV.int 0)])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    JR.setField this "UP_RIGHT" (<- JR.new "Direction" #[(JV.str "UP RIGHT"), (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "UP") "getOtherName_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.call (<- JR.getField this "RIGHT") "getOtherName_0" #[])]) "toString_0" #[]), (JV.int 5), (JV.int 0)])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    JR.setField this "DOWN_LEFT" (<- JR.new "Direction" #[(JV.str "DOWN LEFT"), (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "DOWN") "getOtherName_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.call (<- JR.getField this "LEFT") "getOtherName_0" #[])]) "toString_0" #[]), (JV.int 6), (JV.int 0)])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    JR.setField this "DOWN_RIGHT" (<- JR.new "Direction" #[(JV.str "DOWN RIGHT"), (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "DOWN") "getOtherName_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.call (<- JR.getField this "RIGHT") "getOtherName_0" #[])]) "toString_0" #[]), (JV.int 7), (JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "DirectionFactory",
    javaName := "org.allbinary.direction.DirectionFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NAME", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("DOWN", JV.null), ("UP", JV.null), ("UP_LEFT", JV.null), ("UP_RIGHT", JV.null), ("DOWN_LEFT", JV.null), ("DOWN_RIGHT", JV.null), ("NOT_BORDERED_WITH", JV.null), ("NO_DIRECTION", JV.null), ("TOP", JV.null), ("BOTTOM", JV.null), ("ALL_DIRECTION", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DirectionFactory


