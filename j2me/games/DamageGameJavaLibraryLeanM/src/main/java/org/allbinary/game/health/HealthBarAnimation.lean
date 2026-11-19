-- Generated Code Do Not Modify
-- package org.allbinary.game.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthBarAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onHealthChange_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newX2 : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "x2" (JR.asI l_newX2)
    let mut l_quarter : JV := (JR.asI ((<- JR.shr (<- JR.call (<- JR.getField this "allbinaryLayer") "getWidth_0" #[]) (JV.int 2))))
    if JR.truth (<- JR.gt (<- JR.getField this "x2") (<- JR.mul l_quarter (JV.int 3))) then
        JR.setInherited this "HealthBarAnimation" "basicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "GREEN")
        JR.setInherited this "HealthBarAnimation" "colorP" (<- JR.call (<- JR.getInherited this "HealthBarAnimation" "basicColor") "intValue_0" #[])
        pure ()
    else
        if JR.truth (<- JR.gt (<- JR.getField this "x2") (<- JR.mul l_quarter (JV.int 2))) then
            JR.setInherited this "HealthBarAnimation" "basicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "YELLOW")
            JR.setInherited this "HealthBarAnimation" "colorP" (<- JR.call (<- JR.getInherited this "HealthBarAnimation" "basicColor") "intValue_0" #[])
            pure ()
        else
            if JR.truth (<- JR.gt (<- JR.getField this "x2") l_quarter) then
                JR.setInherited this "HealthBarAnimation" "basicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "ORANGE")
                JR.setInherited this "HealthBarAnimation" "colorP" (<- JR.call (<- JR.getInherited this "HealthBarAnimation" "basicColor") "intValue_0" #[])
                pure ()
            else
                JR.setInherited this "HealthBarAnimation" "basicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "RED")
                JR.setInherited this "HealthBarAnimation" "colorP" (<- JR.call (<- JR.getInherited this "HealthBarAnimation" "basicColor") "intValue_0" #[])
                pure ()
    pure JV.null


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicHudFactory : JV := (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq (<- JR.getField this "location") (<- JR.getField l_basicHudFactory "TOPLEFT")) then
        return (JR.asI (<- JR.sub (<- JR.call (<- JR.call (<- JR.getField this "allbinaryLayer") "getViewPosition_0" #[]) "getY_0" #[]) (JV.int 4)))
    else
        if JR.truth (<- JR.eq (<- JR.getField this "location") (<- JR.getField l_basicHudFactory "BOTTOMLEFT")) then
            return (JR.asI (<- JR.add (<- JR.call (<- JR.call (<- JR.getField this "allbinaryLayer") "getViewPosition_0" #[]) "getY2_0" #[]) (JV.int 4)))
    return (JR.asI (JV.int (-1)))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    JR.setField this "allbinaryLayer" l_layerInterface
    JR.setField this "location" (JR.asI l_location)
    let mut l_basicHudFactory : JV := (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.ne (<- JR.getField this "location") (<- JR.getField l_basicHudFactory "TOPLEFT")) (do pure (<- JR.ne (<- JR.getField this "location") (<- JR.getField l_basicHudFactory "BOTTOMLEFT")))) then
        throw (<- JR.new "Exception" #[(JV.str "Location Not Valid")])
    if JR.truth (<- JR.gt (<- JR.call l_layerInterface "getWidth_0" #[]) (JV.int 40)) then
        JR.setField this "thickness" (JR.asI (JV.int 3))
        pure ()
    else
        if JR.truth (<- JR.gt (<- JR.call l_layerInterface "getWidth_0" #[]) (JV.int 20)) then
            JR.setField this "thickness" (JR.asI (JV.int 2))
            pure ()
        else
            JR.setField this "thickness" (JR.asI (JV.int 1))
            pure ()
    pure this

initialize JR.registerClass {
    name := "HealthBarAnimation",
    javaName := "org.allbinary.game.health.HealthBarAnimation",
    super := "Animation",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicColorFactory", JV.null), ("x2", (JV.int 0)), ("thickness", (JV.int 0)), ("location", (JV.int 0)), ("allbinaryLayer", JV.null)],
    statics := #[],
    methods := #[
        ("onHealthChange_1", #["int"], false, m_onHealthChange_1), 
        ("getY_0", #[], false, m_getY_0), 
        ("jinit_2", #["AllBinaryLayer", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthBarAnimation


