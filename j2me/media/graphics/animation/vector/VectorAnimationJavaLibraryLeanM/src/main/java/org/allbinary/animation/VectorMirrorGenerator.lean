-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorMirrorGenerator

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "vectorAnimationUtil" (<- JR.callStatic "VectorAnimationUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VectorMirrorGenerator" "instance" (<- JR.new "VectorMirrorGenerator" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VectorMirrorGenerator" "instance")


def m_getInstance_2_intArrArrArr_int (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    try
        let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
        let mut l_pointBasicArrayList : JV := JV.null
        let mut l_nextPoints : JV := JV.null
        let mut l_size2 : JV := (JR.asI (JV.int 0))
        let mut l_size : JV := (JR.asI (<- JR.alen l_points))
        let mut l_pointsBasicArrayList : JV := (<- JR.new "BasicArrayListS" #[l_size])
        if true then
            let mut l_frame : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_frame l_size)) then break
                l_nextPoints := (<- JR.aget l_points l_frame)
                l_size2 := (JR.asI (<- JR.alen l_nextPoints))
                l_pointBasicArrayList := (<- JR.new "BasicArrayListS" #[l_size2])
                if true then
                    let mut l_index : JV := (JR.asI (JV.int 0))
                    repeat
                        if !(JR.truth (<- JR.lt l_index l_size2)) then break
                        let _ := (<- JR.call l_pointBasicArrayList "add_1" #[(<- JR.call l_pointFactory "createXY_2" #[(<- JR.aget (<- JR.aget l_nextPoints l_index) (JV.int 0)), (<- JR.aget (<- JR.aget l_nextPoints l_index) (JV.int 1))])])
                        l_index := (JR.inc l_index)
                        pure ()
                    pure ()
                let _ := (<- JR.call l_pointsBasicArrayList "add_1" #[l_pointBasicArrayList])
                l_frame := (JR.inc l_frame)
                pure ()
            pure ()
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.alen l_points))) then break
                let _ := (<- JR.call l_pointsBasicArrayList "add_1" #[(<- JR.call this "getInstance_2" #[(<- JR.aget (<- JR.getField l_pointsBasicArrayList "objectArray") l_index), l_width])])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let mut l_newPoints : JV := (<- JR.call (<- JR.getField this "vectorAnimationUtil") "toAnimationArrayFromListOfPointList_1" #[l_pointsBasicArrayList])
        return l_newPoints
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY_ARRAY")
        else
            throw jex0
    pure JV.null


def m_getInstance_2_BasicArrayList_int (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_pointBasicArrayList : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_graphicsPipe : JV := (<- JR.new "BasicGraphicsPipeline" #[l_pointBasicArrayList])
    let _ := (<- JR.call l_graphicsPipe "createMatrix_0" #[])
    let _ := (<- JR.call l_graphicsPipe "mirror_1" #[l_width])
    return (<- JR.call l_graphicsPipe "getMatrix_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VectorMirrorGenerator",
    javaName := "org.allbinary.animation.VectorMirrorGenerator",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("vectorAnimationUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_2", #["intArrArrArr", "int"], false, m_getInstance_2_intArrArrArr_int), 
        ("getInstance_2", #["BasicArrayList", "int"], false, m_getInstance_2_BasicArrayList_int), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorMirrorGenerator


