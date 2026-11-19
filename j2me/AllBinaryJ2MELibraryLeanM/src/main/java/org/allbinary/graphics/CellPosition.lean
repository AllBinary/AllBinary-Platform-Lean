-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CellPosition

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getColumn_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "column"))


def m_getRow_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "row"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "CellPosition" "toStringColRow_2" #[(<- JR.call this "getColumn_0" #[]), (<- JR.call this "getRow_0" #[])])


def m_toStringCellPosition_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicGeographicMapCellPosition : JV := (JR.arg jargs 0)
    return (<- JR.callStatic "CellPosition" "toStringColRow_2" #[(<- JR.call l_basicGeographicMapCellPosition "getColumn_0" #[]), (<- JR.call l_basicGeographicMapCellPosition "getRow_0" #[])])


def m_toStringColRow_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i_column : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i_row : JV := (JR.asI (JR.arg jargs 1))
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "PARENTHESIS_OPEN")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_i_column])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_i_row])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "PARENTHESIS_CLOSE")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_column : JV := (JR.asI (JR.arg jargs 0))
    let mut l_row : JV := (JR.asI (JR.arg jargs 1))
    let mut l_columns : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rows : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "V" this #[]
    let _ <- jfields this
    JR.setField this "column" (JR.asI l_column)
    JR.setField this "row" (JR.asI l_row)
    JR.setField this "id" (JR.asI (<- JR.add ((<- JR.mul l_row l_columns)) l_column))
    pure this

initialize JR.registerClass {
    name := "CellPosition",
    javaName := "org.allbinary.graphics.CellPosition",
    super := "V",
    interfaces := #[],
    isInterface := false,
    fields := #[("id", (JV.int 0)), ("column", (JV.int 0)), ("row", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getColumn_0", #[], false, m_getColumn_0), 
        ("getRow_0", #[], false, m_getRow_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("toStringCellPosition_1", #["CellPosition"], true, m_toStringCellPosition_1), 
        ("toStringColRow_2", #["int", "int"], true, m_toStringColRow_2), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_4", #["int", "int", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CellPosition


