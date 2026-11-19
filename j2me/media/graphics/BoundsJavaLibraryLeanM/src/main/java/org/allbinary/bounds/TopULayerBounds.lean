-- Generated Code Do Not Modify
-- package org.allbinary.bounds
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TopULayerBounds

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_boundsVisitorInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.gt (<- JR.call l_boundsVisitorInterface "getX_0" #[]) (<- JR.call (<- JR.getInherited this "TopULayerBounds" "rectangle") "getMaxX_0" #[])) then
        let _ := (<- JR.call l_boundsVisitorInterface "maxX_0" #[])
        pure ()
    if JR.truth (<- JR.lt (<- JR.call l_boundsVisitorInterface "getX_0" #[]) (<- JR.call (<- JR.call (<- JR.getInherited this "TopULayerBounds" "rectangle") "getPoint_0" #[]) "getX_0" #[])) then
        let _ := (<- JR.call l_boundsVisitorInterface "minX_0" #[])
        pure ()
    if JR.truth (<- JR.lt (<- JR.call l_boundsVisitorInterface "getY_0" #[]) (<- JR.call (<- JR.call (<- JR.getInherited this "TopULayerBounds" "rectangle") "getPoint_0" #[]) "getY_0" #[])) then
        let _ := (<- JR.call l_boundsVisitorInterface "minY_0" #[])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "LayerBounds" this #[l_rectangle]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TopULayerBounds",
    javaName := "org.allbinary.bounds.TopULayerBounds",
    super := "LayerBounds",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("visit_1", #["BoundsVisitorInterface"], false, m_visit_1), 
        ("jinit_1", #["Rectangle"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TopULayerBounds


