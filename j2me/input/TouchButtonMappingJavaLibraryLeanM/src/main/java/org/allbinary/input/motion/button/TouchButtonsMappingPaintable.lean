-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonsMappingPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "paintableTable" (<- JR.newArray "L" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "touchButtonLocationHelper" (<- JR.new "TouchButtonLocationHelper" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        JR.setField this "paintableTable" (<- JR.call this "createPaintableTable_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "updateRectangle"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_createPaintableTable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalColumns : JV := (JR.asI (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getTotalColumns_0" #[]))
    let mut l_totalRows : JV := (JR.asI (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getTotalRows_0" #[]))
    let mut l_paintableTable : JV := (<- JR.newArray "L" 2 #[l_totalColumns, l_totalRows])
    let mut l_cellPositionFactory : JV := (<- JR.callStatic "CellPositionFactory" "getInstance_0" #[])
    let mut l_commonButtons : JV := (<- JR.callStatic "CommonButtons" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_totalColumns (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if true then
                let mut l_rowIndex : JV := (JR.asI (<- JR.sub l_totalRows (JV.int 1)))
                repeat
                    if !(JR.truth (<- JR.ge l_rowIndex (JV.int 0))) then break
                    JR.aset (<- JR.aget (<- JR.getField this "paintableTable") l_index) l_rowIndex (<- JR.callStatic "TouchButton" "createButton_6" #[(<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "NONE"), (<- JR.callStatic "TouchButtonBlankResource" "getInstance_0" #[]), (<- JR.getField l_commonButtons "NORMAL_BUTTON"), (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[l_index, l_rowIndex]), (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getColumnsRemainderHalf_0" #[]), (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getRowsRemainderHalf_0" #[])])
                    l_rowIndex := (JR.dec l_rowIndex)
                    pure ()
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return l_paintableTable


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_totalColumns : JV := (JR.asI (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getTotalColumns_0" #[]))
    let mut l_totalRows : JV := (JR.asI (<- JR.call (<- JR.getField this "touchButtonLocationHelper") "getTotalRows_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_totalColumns (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if true then
                let mut l_rowIndex : JV := (JR.asI (<- JR.sub l_totalRows (JV.int 1)))
                repeat
                    if !(JR.truth (<- JR.ge l_rowIndex (JV.int 0))) then break
                    let _ := (<- JR.call (<- JR.aget (<- JR.aget (<- JR.getField this "paintableTable") l_index) l_rowIndex) "paint_1" #[l_graphics])
                    l_rowIndex := (JR.dec l_rowIndex)
                    pure ()
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "foregroundColor" (JR.asI (<- JR.call l_basicColor "intValue_0" #[]))
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "TouchButtonsMappingPaintable",
    javaName := "org.allbinary.input.motion.button.TouchButtonsMappingPaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("foregroundColor", (JV.int 0)), ("paintableTable", JV.null), ("touchButtonLocationHelper", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("createPaintableTable_0", #[], false, m_createPaintableTable_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonsMappingPaintable


