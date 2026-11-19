-- Generated Code Do Not Modify
-- package org.allbinary.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PointsUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PointsUtil" "instance" (<- JR.new "PointsUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PointsUtil" "instance")


def m_adjustXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_size : JV := (JR.asI (<- JR.alen l_points))
    let mut l_newPoints : JV := (<- JR.newArray "I" 3 #[l_size, (JV.int 0), (JV.int 0)])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_size2 : JV := (JR.asI (<- JR.alen (<- JR.aget l_points l_index)))
            JR.aset l_newPoints l_index (<- JR.newArray "I" 2 #[l_size2, (JV.int 2)])
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size2)) then break
                    if JR.truth (<- JR.ne (<- JR.aget (<- JR.aget (<- JR.aget l_points l_index) l_index2) (JV.int 0)) (JV.int 1000)) then
                        JR.aset (<- JR.aget (<- JR.aget l_newPoints l_index) l_index2) (JV.int 0) (<- JR.add (<- JR.aget (<- JR.aget (<- JR.aget l_points l_index) l_index2) (JV.int 0)) l_x)
                        JR.aset (<- JR.aget (<- JR.aget l_newPoints l_index) l_index2) (JV.int 1) (<- JR.add (<- JR.aget (<- JR.aget (<- JR.aget l_points l_index) l_index2) (JV.int 1)) l_y)
                        pure ()
                    else
                        JR.aset (<- JR.aget (<- JR.aget l_newPoints l_index) l_index2) (JV.int 0) (JV.int 1000)
                        JR.aset (<- JR.aget (<- JR.aget l_newPoints l_index) l_index2) (JV.int 1) (JV.int 1000)
                        pure ()
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_newPoints


def m_adjust_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_both : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.call this "adjust_3" #[l_points, l_both, l_both])


def m_adjust_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_newPoints : JV := (<- JR.newArray "I" 2 #[(<- JR.alen l_points), (JV.int 2)])
    if true then
        let mut l_index2 : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index2 (<- JR.alen l_points))) then break
            if JR.truth (<- JR.ne (<- JR.aget (<- JR.aget l_points l_index2) (JV.int 0)) (JV.int 1000)) then
                JR.aset (<- JR.aget l_newPoints l_index2) (JV.int 0) (<- JR.add (<- JR.aget (<- JR.aget l_points l_index2) (JV.int 0)) l_x)
                JR.aset (<- JR.aget l_newPoints l_index2) (JV.int 1) (<- JR.add (<- JR.aget (<- JR.aget l_points l_index2) (JV.int 1)) l_y)
                pure ()
            else
                JR.aset (<- JR.aget l_newPoints l_index2) (JV.int 0) (JV.int 1000)
                JR.aset (<- JR.aget l_newPoints l_index2) (JV.int 1) (JV.int 1000)
                pure ()
            l_index2 := (JR.inc l_index2)
            pure ()
        pure ()
    return l_newPoints


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PointsUtil",
    javaName := "org.allbinary.vector.PointsUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("adjustXY_3", #["intArrArrArr", "int", "int"], false, m_adjustXY_3), 
        ("adjust_2", #["intArrArr", "int"], false, m_adjust_2), 
        ("adjust_3", #["intArrArr", "int", "int"], false, m_adjust_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PointsUtil


