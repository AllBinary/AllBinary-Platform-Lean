-- Generated Code Do Not Modify
-- package org.allbinary.game.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GroupFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "NULL_GROUP_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "index" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GroupFactory" "instance" (<- JR.new "GroupFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GroupFactory" "instance")


def m_getNextGroup_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_group : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") (<- JR.getField this "index"))
    JR.setField this "index" (JR.inc (<- JR.getField this "index"))
    return l_group


def m_getNextGroupByName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_group : JV := (<- JR.call this "getNextGroup_0" #[])
    let _ := (<- JR.call l_group "setName_1" #[l_name])
    return l_group


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groups : JV := (JR.asS (JR.arg jargs 0))
    let mut l_nameArray : JV := (JR.arg jargs 1)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let mut l_TEAM : JV := (JV.str "Team ")
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    JR.setField this "index" (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
    let mut l_name : JV := JV.null
    repeat
        if !(JR.truth (<- JR.lt l_size (JR.toI l_groups))) then break
        l_name := (<- JR.getField l_stringUtil "EMPTY_STRING")
        if JR.truth (<- JR.lt l_size (<- JR.alen l_nameArray)) then
            l_name := (<- JR.aget l_nameArray l_size)
            pure ()
        else
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            l_name := (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_TEAM]) "appendint_1" #[l_size]) "toString_0" #[])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.new "Group" #[l_name, (JR.toS ((<- JR.add l_size (JV.int 3))))])])
        l_size := (JR.inc l_size)
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GroupFactory",
    javaName := "org.allbinary.game.identification.GroupFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("NULL_GROUP_ARRAY", JV.null), ("list", JV.null), ("index", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getNextGroup_0", #[], false, m_getNextGroup_0), 
        ("getNextGroupByName_1", #["String"], false, m_getNextGroupByName_1), 
        ("init_2", #["short", "StringArr"], false, m_init_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GroupFactory


