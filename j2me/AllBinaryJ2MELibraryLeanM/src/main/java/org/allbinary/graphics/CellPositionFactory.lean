-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CellPositionFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "NONE" (<- JR.new "CellPosition" #[(JV.int (-1)), (JV.int (-1)), (JV.int (-1)), (JV.int (-1))])
    JR.setField this "cellPositionArray" (<- JR.newArray "L" 2 #[(JV.int 0), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CellPositionFactory" "SINGLETON" (<- JR.new "CellPositionFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CellPositionFactory" "SINGLETON")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_columns : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rows : JV := (JR.asI (JR.arg jargs 1))
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Init: columns: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_columns])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " rows: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_rows])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "INIT")])
    JR.setField this "cellPositionArray" (<- JR.newArray "L" 2 #[l_columns, l_rows])
    JR.setField this "columns" (JR.asI l_columns)
    JR.setField this "rows" (JR.asI l_rows)
    if true then
        let mut l_column : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_column l_columns)) then break
            if true then
                let mut l_row : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_row l_rows)) then break
                    let _ := (<- JR.call this "createInstance_2" #[l_column, l_row])
                    l_row := (JR.inc l_row)
                    pure ()
                pure ()
            l_column := (JR.inc l_column)
            pure ()
        pure ()
    pure JV.null


def m_getInstanceColRow_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i_column : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i_row : JV := (JR.asI (JR.arg jargs 1))
    try
        return (<- JR.aget (<- JR.aget (<- JR.getField this "cellPositionArray") l_i_column) l_i_row)
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "columns: ")]) "appendint_1" #[(<- JR.call this "getColumns_0" #[])]) "append_1" #[(JV.str " rows: ")]) "appendint_1" #[(<- JR.call this "getRows_0" #[])]) "append_1" #[(JV.str " col: ")]) "appendint_1" #[l_i_column]) "append_1" #[(JV.str " row: ")]) "appendint_1" #[l_i_row]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            return (<- JR.getField this "NONE")
        else
            throw jex0
    pure JV.null


def m_createInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_i_column : JV := (JR.asI (JR.arg jargs 0))
    let mut l_i_row : JV := (JR.asI (JR.arg jargs 1))
    let mut l_cellPositionCanBeNull : JV := (<- JR.aget (<- JR.aget (<- JR.getField this "cellPositionArray") l_i_column) l_i_row)
    if JR.truth (<- JR.eq l_cellPositionCanBeNull JV.null) then
        l_cellPositionCanBeNull := (<- JR.new "CellPosition" #[l_i_column, l_i_row, (<- JR.getField this "columns"), (<- JR.getField this "rows")])
        JR.aset (<- JR.aget (<- JR.getField this "cellPositionArray") l_i_column) l_i_row l_cellPositionCanBeNull
        pure ()
    return l_cellPositionCanBeNull


def m_getColumns_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "columns"))


def m_getRows_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "rows"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CellPositionFactory",
    javaName := "org.allbinary.graphics.CellPositionFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("NONE", JV.null), ("cellPositionArray", JV.null), ("columns", (JV.int 0)), ("rows", (JV.int 0))],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_2", #["int", "int"], false, m_init_2), 
        ("getInstanceColRow_2", #["int", "int"], false, m_getInstanceColRow_2), 
        ("createInstance_2", #["int", "int"], false, m_createInstance_2), 
        ("getColumns_0", #[], false, m_getColumns_0), 
        ("getRows_0", #[], false, m_getRows_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CellPositionFactory


