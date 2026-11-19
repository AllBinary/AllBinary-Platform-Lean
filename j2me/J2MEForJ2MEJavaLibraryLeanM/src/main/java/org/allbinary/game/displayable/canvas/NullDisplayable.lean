-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullDisplayable

def jfields (this : JV) : JM JV := do
    JR.setField this "baseGameStatistics" (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullDisplayable" "SINGLETON" (<- JR.new "NullDisplayable" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullDisplayable" "SINGLETON")


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "baseGameStatistics") "nextRefresh_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Canvas" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullDisplayable",
    javaName := "org.allbinary.game.displayable.canvas.NullDisplayable",
    super := "Canvas",
    interfaces := #[],
    isInterface := false,
    fields := #[("baseGameStatistics", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullDisplayable


