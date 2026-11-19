-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PaintableComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "paintableArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "paintableArray") l_index) "paint_1" #[l_graphics])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "paintableArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "paintableArray") l_index) "paintThreed_1" #[l_graphics])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "paintableArray" l_paintableArray
    pure this

initialize JR.registerClass {
    name := "PaintableComposite",
    javaName := "org.allbinary.graphics.paint.PaintableComposite",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("paintableArray", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_1", #["PaintableInterfaceArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PaintableComposite


