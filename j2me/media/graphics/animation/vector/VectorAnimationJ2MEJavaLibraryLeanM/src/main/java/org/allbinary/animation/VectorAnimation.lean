-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "currentPoints" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY_ARRAY")
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createVectorAnimation_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints2 : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let mut l_currentPoints : JV := (<- JR.newArray "I" 3 #[(JV.int 1), (<- JR.alen l_currentPoints2), (JV.int 2)])
    let mut l_size : JV := (JR.asI (<- JR.alen l_currentPoints2))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.aget (<- JR.aget l_currentPoints (JV.int 0)) l_index) (JV.int 0) (<- JR.aget (<- JR.aget l_currentPoints2 l_index) (JV.int 0))
            JR.aset (<- JR.aget (<- JR.aget l_currentPoints (JV.int 0)) l_index) (JV.int 1) (<- JR.aget (<- JR.aget l_currentPoints2 l_index) (JV.int 1))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.new "VectorAnimation" #[l_currentPoints, l_basicColor, l_animationBehavior])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.call this "getBasicColorP_0" #[]) JV.null) (do pure (<- JR.ne (<- JR.call (<- JR.call this "getBasicColorP_0" #[]) "intValue_0" #[]) (<- JR.call l_basicColor "intValue_0" #[])))) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "setBasicColorP_1" #[l_basicColor])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_changeBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.callInherited this "VectorAnimation" "getChangeBasicColor_0" #[]) JV.null) (do pure (<- JR.ne (<- JR.call (<- JR.callInherited this "VectorAnimation" "getChangeBasicColor_0" #[]) "intValue_0" #[]) (<- JR.call l_basicColor "intValue_0" #[])))) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "changeBasicColor_1" #[l_basicColor])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_setAlpha_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alpha : JV := (JR.asI (JR.arg jargs 0))
    let mut l_changed : JV := (JV.bool false)
    if JR.truth (<- JR.ne (<- JR.getInherited this "VectorAnimation" "alphaP") l_alpha) then
        l_changed := (JV.bool true)
        pure ()
    let _ := (<- JR.callSuper "IndexedAnimation" this "setAlpha_1" #[l_alpha])
    if JR.truth l_changed then
        let _ := (<- JR.call this "updateModifiers_0" #[])
        pure ()
    pure JV.null


def m_setScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_scaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_setMaxScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxScaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_maxScaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_updateModifiers_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.alen (<- JR.getField this "currentPoints")))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "previous_0" #[])
    pure JV.null


def m_paintVectors_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    try
        let mut l_nextPointX : JV := (JR.asI (JV.int 0))
        let mut l_nextPointY : JV := (JR.asI (JV.int 0))
        let mut l_nextPoint : JV := JV.null
        let mut l_point : JV := JV.null
        let mut l_currentPointsFrame : JV := (<- JR.aget (<- JR.getField this "currentPoints") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
        let mut l_size : JV := (JR.asI (<- JR.alen l_currentPointsFrame))
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 2)))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            l_nextPoint := (<- JR.aget l_currentPointsFrame l_index)
            l_point := (<- JR.aget l_currentPointsFrame (<- JR.add l_index (JV.int 1)))
            l_nextPointX := (JR.asI (<- JR.aget l_nextPoint (JV.int 0)))
            l_nextPointY := (JR.asI (<- JR.aget l_nextPoint (JV.int 1)))
            if JR.truth (<- JR.ne l_nextPointX (JV.int 1000)) then
                let _ := (<- JR.call l_graphics "drawLine_4" #[(<- JR.add (<- JR.aget l_point (JV.int 0)) l_x), (<- JR.add (<- JR.aget l_point (JV.int 1)) l_y), (<- JR.add l_nextPointX l_x), (<- JR.add l_nextPointY l_y)])
                pure ()
            else
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "VectorAnimation" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "VectorAnimation" "commonStrings") "EXCEPTION"), this, (JV.str "paintVectors"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "VectorAnimation" "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.getInherited this "VectorAnimation" "basicColor")])
    let _ := (<- JR.call this "paintVectors_3" #[l_graphics, l_x, l_y])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setIndex_1" #[l_index])
    pure JV.null


def m_getPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "currentPoints") l_frame)


def m_setPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    JR.setField this "currentPoints" l_currentPoints
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.alen l_currentPoints)])
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "IndexedAnimation" this "getBasicColorP_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "setPoints_1" #[l_currentPoints])
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "VectorAnimation",
    javaName := "org.allbinary.animation.VectorAnimation",
    super := "IndexedAnimation",
    interfaces := #["VectorAnimationInterface"],
    isInterface := false,
    fields := #[("currentPoints", JV.null), ("circularIndexUtil", JV.null)],
    statics := #[],
    methods := #[
        ("createVectorAnimation_3", #["intArrArr", "BasicColor", "AnimationBehavior"], true, m_createVectorAnimation_3), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("changeBasicColor_1", #["BasicColor"], false, m_changeBasicColor_1), 
        ("setAlpha_1", #["int"], false, m_setAlpha_1), 
        ("setScale_2", #["float", "float"], false, m_setScale_2), 
        ("setMaxScale_2", #["float", "float"], false, m_setMaxScale_2), 
        ("updateModifiers_0", #[], false, m_updateModifiers_0), 
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("paintVectors_3", #["Graphics", "int", "int"], false, m_paintVectors_3), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getPoints_1", #["int"], false, m_getPoints_1), 
        ("setPoints_1", #["intArrArrArr"], false, m_setPoints_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("jinit_3", #["intArrArrArr", "BasicColor", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorAnimation


