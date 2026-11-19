-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABCustomForm

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAllitems_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "L" 1 #[(JV.int 0)])


def m_size_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_setSelectedIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getSelectedIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_deleteAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_delete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    return (JR.asI (JV.int (-1)))


def m_insert_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    pure JV.null


def m_set_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    pure JV.null


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "ABCustomItem" "getNullInstance_0" #[])


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getTitle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CustomScreen" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABCustomForm",
    javaName := "org.allbinary.graphics.form.ABCustomForm",
    super := "CustomScreen",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null)],
    statics := #[],
    methods := #[
        ("getAllitems_0", #[], false, m_getAllitems_0), 
        ("size_0", #[], false, m_size_0), 
        ("setSelectedIndex_1", #["int"], false, m_setSelectedIndex_1), 
        ("getSelectedIndex_0", #[], false, m_getSelectedIndex_0), 
        ("deleteAll_0", #[], false, m_deleteAll_0), 
        ("delete_1", #["int"], false, m_delete_1), 
        ("append_1", #["ABCustomItem"], false, m_append_1), 
        ("insert_2", #["int", "ABCustomItem"], false, m_insert_2), 
        ("set_2", #["int", "ABCustomItem"], false, m_set_2), 
        ("get_1", #["int"], false, m_get_1), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("getTitle_0", #[], false, m_getTitle_0), 
        ("jinit_4", #["String", "ABCustomItemArr", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABCustomForm


