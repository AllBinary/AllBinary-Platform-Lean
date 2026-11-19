-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorRotationGenerator

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "vectorAnimationUtil" (<- JR.callStatic "VectorAnimationUtil" "getInstance_0" #[])
    JR.setField this "angleFactory" (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VectorRotationGenerator" "instance" (<- JR.new "VectorRotationGenerator" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VectorRotationGenerator" "instance")


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vectorRotationInfo : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstanceFrames_4" #[(<- JR.call l_vectorRotationInfo "getWidth_0" #[]), (<- JR.call l_vectorRotationInfo "getHeight_0" #[]), (<- JR.call l_vectorRotationInfo "getPoints_0" #[]), (<- JR.call l_vectorRotationInfo "getTotalFrames_0" #[])])


def m_getInstanceFrames_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_points : JV := (JR.arg jargs 2)
    let mut l_frames : JV := (JR.asI (JR.arg jargs 3))
    try
        let mut l_totalAngle : JV := (JR.asS (<- JR.getField (<- JR.getField this "angleFactory") "TOTAL_ANGLE"))
        let mut l_angleIncrement : JV := (JR.asI (<- JR.div (JR.toI l_totalAngle) l_frames))
        let mut l_pointsBasicArrayList : JV := (<- JR.new "BasicArrayListS" #[(<- JR.div (JR.toI l_totalAngle) l_angleIncrement)])
        let mut l_pointBasicArrayList : JV := (<- JR.new "BasicArrayListS" #[(<- JR.alen l_points)])
        let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
        let mut l_size : JV := (JR.asI (<- JR.alen l_points))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let _ := (<- JR.call l_pointBasicArrayList "add_1" #[(<- JR.call l_pointFactory "createXY_2" #[(<- JR.aget (<- JR.aget l_points l_index) (JV.int 0)), (<- JR.aget (<- JR.aget l_points l_index) (JV.int 1))])])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (JR.toI l_totalAngle))) then break
            let _ := (<- JR.call l_pointsBasicArrayList "add_1" #[(<- JR.call this "getListAtAngle_4" #[l_width, l_height, l_pointBasicArrayList, (<- JR.call (<- JR.getField this "angleFactory") "getAt_1" #[l_index])])])
            l_index := (JR.castLike l_index (<- JR.add l_index l_angleIncrement))
            pure ()
        let mut l_newPoints : JV := (<- JR.call (<- JR.getField this "vectorAnimationUtil") "toAnimationArrayFromListOfPointListWithPointsPerFrame_2" #[l_pointsBasicArrayList, (<- JR.call l_pointBasicArrayList "size_0" #[])])
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


def m_getListAtAngle_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_pointBasicArrayList : JV := (JR.arg jargs 2)
    let mut l_angle : JV := (JR.arg jargs 3)
    let mut l_graphicsPipe : JV := (<- JR.new "BasicGraphicsPipeline" #[l_pointBasicArrayList])
    let _ := (<- JR.call l_graphicsPipe "createMatrix_0" #[])
    let _ := (<- JR.call l_graphicsPipe "translate_2" #[(JR.neg ((<- JR.shr l_width (JV.int 1)))), (JR.neg ((<- JR.shr l_height (JV.int 1))))])
    let _ := (<- JR.call l_graphicsPipe "rotateToAngle_1" #[l_angle])
    let _ := (<- JR.call l_graphicsPipe "translate_2" #[((<- JR.shr l_width (JV.int 1))), ((<- JR.shr l_height (JV.int 1)))])
    return (<- JR.call l_graphicsPipe "getMatrix_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VectorRotationGenerator",
    javaName := "org.allbinary.animation.VectorRotationGenerator",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("vectorAnimationUtil", JV.null), ("angleFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstance_1", #["VectorInfo"], false, m_getInstance_1), 
        ("getInstanceFrames_4", #["int", "int", "intArrArr", "int"], false, m_getInstanceFrames_4), 
        ("getListAtAngle_4", #["int", "int", "BasicArrayList", "Angle"], false, m_getListAtAngle_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorRotationGenerator


