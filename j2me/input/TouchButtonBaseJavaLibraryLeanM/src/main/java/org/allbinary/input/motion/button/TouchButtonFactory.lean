-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "LIST" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    JR.setField this "list" (<- JR.getField this "LIST")
    JR.setField this "savedList" (<- JR.getField this "LIST")
    JR.setField this "saved" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchButtonFactory" "SINGLETON" (<- JR.new "TouchButtonFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchButtonFactory" "SINGLETON")


def m_defaultList_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "list" (<- JR.getField this "LIST")
    let _ := (<- JR.call this "toggle_2" #[(JV.bool false), (<- JR.getField this "LIST")])
    pure JV.null


def m_toggle_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_save : JV := (JR.arg jargs 0)
    let mut l_list : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ne l_list (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])) then
        JR.setField this "savedList" l_list
        if JR.truth (JR.not (<- JR.getField this "saved")) then
            JR.setField this "list" (<- JR.getField this "savedList")
            pure ()
        pure ()
    else
        if JR.truth l_save then
            if JR.truth (JR.not (<- JR.getField this "saved")) then
                JR.setField this "saved" (JV.bool true)
                JR.setField this "savedList" (<- JR.getField this "list")
                JR.setField this "list" (<- JR.getField this "LIST")
                pure ()
            else
                pure ()
            pure ()
        else
            JR.setField this "list" (<- JR.getField this "savedList")
            JR.setField this "saved" (JV.bool false)
            pure ()
        pure ()
    pure JV.null


def m_setList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_list JV.null) then
        throw (<- JR.new "Exception" #[(JV.str "Null List")])
    JR.setField this "list" l_list
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchButtonFactory",
    javaName := "org.allbinary.input.motion.button.TouchButtonFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LIST", JV.null), ("list", JV.null), ("savedList", JV.null), ("saved", (JV.bool false))],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("defaultList_0", #[], false, m_defaultList_0), 
        ("toggle_2", #["boolean", "BasicArrayList"], false, m_toggle_2), 
        ("setList_1", #["BasicArrayList"], false, m_setList_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonFactory


