-- Generated Code Do Not Modify
-- package org.allbinary.game.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGroupFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME" (JV.str "GROUP_NAME")
    JR.setField this "NO_SUCH_GROUP" (JV.str "No Such Group: ")
    JR.setField this "GOOD" (<- JR.new "Group" #[(JV.str "Good Guys"), (JR.toS (JV.int 0))])
    JR.setField this "ENEMY" (<- JR.new "Group" #[(JV.str "Bad Guys"), (JR.toS (JV.int 1))])
    JR.setField this "ENEMY_ON_LEVEL" (<- JR.new "Group" #[(JV.str "Bad Guys on Level"), (JR.toS (JV.int 2))])
    JR.setField this "NONE" (<- JR.new "Group" #[(JV.str "Not On A Team"), (JR.toS (JV.int 3))])
    JR.setField this "GOOD_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "GOOD")])
    JR.setField this "ENEMY_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "ENEMY")])
    JR.setField this "ENEMY_ON_LEVEL_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "ENEMY"), (<- JR.getField this "ENEMY_ON_LEVEL")])
    JR.setField this "NONE_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "NONE")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicGroupFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "BasicGroupFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "BasicGroupFactory" "instance" (<- JR.new "BasicGroupFactory" #[])
        pure ()
    return (<- JR.getStatic "BasicGroupFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicGroupFactory",
    javaName := "org.allbinary.game.identification.BasicGroupFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NAME", JV.null), ("NO_SUCH_GROUP", JV.null), ("GOOD", JV.null), ("ENEMY", JV.null), ("ENEMY_ON_LEVEL", JV.null), ("NONE", JV.null), ("GOOD_ARRAY", JV.null), ("ENEMY_ARRAY", JV.null), ("ENEMY_ON_LEVEL_ARRAY", JV.null), ("NONE_ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGroupFactory


