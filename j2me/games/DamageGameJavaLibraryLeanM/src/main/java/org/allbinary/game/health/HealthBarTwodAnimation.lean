-- Generated Code Do Not Modify
-- package org.allbinary.game.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthBarTwodAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_ax : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.getInherited this "HealthBarTwodAnimation" "allbinaryLayer") "getViewPosition_0" #[]) "getX_0" #[]))
    let _ := (<- JR.call (<- JR.getInherited this "HealthBarTwodAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.getInherited this "HealthBarTwodAnimation" "basicColor"), (<- JR.getInherited this "HealthBarTwodAnimation" "colorP")])
    let _ := (<- JR.call l_graphics "fillRect_4" #[l_ax, (<- JR.sub (<- JR.callInherited this "HealthBarTwodAnimation" "getY_0" #[]) (JV.int 1)), (<- JR.getInherited this "HealthBarTwodAnimation" "x2"), (<- JR.getInherited this "HealthBarTwodAnimation" "thickness")])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_location : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "HealthBarAnimation" this #[l_layerInterface, l_location]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HealthBarTwodAnimation",
    javaName := "org.allbinary.game.health.HealthBarTwodAnimation",
    super := "HealthBarAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_2", #["AllBinaryLayer", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthBarTwodAnimation


