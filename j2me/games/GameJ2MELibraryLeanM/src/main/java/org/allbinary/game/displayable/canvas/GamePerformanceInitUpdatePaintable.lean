-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GamePerformanceInitUpdatePaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "halfHeight" (JR.asI (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "getLastHalfHeight_0" #[]))
    JR.setField this "yArray" (<- JR.arrayOf "I" #[(<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)), (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 15)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 15)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 30)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 30)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 45)), (<- JR.add (<- JR.add (<- JR.getField this "halfHeight") (JV.int 30)) (JV.int 45))])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "baseRefreshHelperCharArray" (<- JR.newArray "C" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "RED" (JR.asI (<- JR.call (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED") "intValue_0" #[]))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "defaultStringWidth" (JR.asI (<- JR.callStatic "MyFontProcessor" "defaultStringWidth_2" #[l_font, (JV.int 2)]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "baseRefreshHelperCharArray" (<- JR.call (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[]) "to2DCharArray_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getField this "RED")])
    let mut l_charArray : JV := JV.null
    let mut l_charArray2 : JV := JV.null
    let mut l_size2 : JV := (JR.asI (JV.int 0))
    let mut l_size3 : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "baseRefreshHelperCharArray")) (JV.int 2)))
    if true then
        let mut l_index : JV := (JR.asI l_size)
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_charArray := (<- JR.aget (<- JR.getField this "baseRefreshHelperCharArray") l_index)
            l_charArray2 := (<- JR.aget (<- JR.getField this "baseRefreshHelperCharArray") (<- JR.add l_index (JV.int 1)))
            l_size2 := (JR.asI (<- JR.alen l_charArray))
            l_size3 := (JR.asI (<- JR.alen l_charArray2))
            let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, (JV.int 0), l_size2, (JV.int 0), (<- JR.aget (<- JR.getField this "yArray") l_index), (JV.int 0)])
            let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray2, (JV.int 0), l_size3, (<- JR.mul l_size2 (<- JR.getField this "defaultStringWidth")), (<- JR.aget (<- JR.getField this "yArray") (<- JR.add l_index (JV.int 1))), (JV.int 0)])
            l_index := (JR.castLike l_index (<- JR.sub l_index (JV.int 2)))
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "InitUpdatePaintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GamePerformanceInitUpdatePaintable",
    javaName := "org.allbinary.game.displayable.canvas.GamePerformanceInitUpdatePaintable",
    super := "InitUpdatePaintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("halfHeight", (JV.int 0)), ("yArray", JV.null), ("myFontProcessor", JV.null), ("baseRefreshHelperCharArray", JV.null), ("defaultStringWidth", (JV.int 0)), ("RED", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("init_0", #[], false, m_init_0), 
        ("update_0", #[], false, m_update_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GamePerformanceInitUpdatePaintable


