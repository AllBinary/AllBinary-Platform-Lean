-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LimitCommandsVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_command : JV := l_anyType
    let mut l_booleanFactory : JV := (<- JR.callStatic "BooleanFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.getField this "isNotSmallDisplay") (do pure (<- JR.eq (<- JR.call l_command "getPriority_0" #[]) (JV.int 1)))) (do pure (<- JR.eq l_command (<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "EXIT_COMMAND")))) (do pure (<- JR.eq l_command (<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "EXIT_WITHOUT_PROGRESS_COMMAND")))) then
        return (<- JR.getField l_booleanFactory "TRUE")
    else
        return (<- JR.getField l_booleanFactory "FALSE")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Visitor" this #[]
    let _ <- jfields this
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "isNotSmallDisplay" (<- JR.cor ((<- JR.cand (<- JR.call l_displayInfo "isPortrait_0" #[]) (do pure (<- JR.gt (<- JR.call l_displayInfo "getLastHeight_0" #[]) (<- JR.getField (<- JR.callStatic "ScreenInfo" "getInstance_0" #[]) "SMALL_WIDTH"))))) (do pure ((<- JR.cand (JR.not (<- JR.call l_displayInfo "isPortrait_0" #[])) (do pure (<- JR.gt (<- JR.call l_displayInfo "getLastHeight_0" #[]) (<- JR.getField (<- JR.callStatic "ScreenInfo" "getInstance_0" #[]) "SMALL_HEIGHT")))))))
    pure this

initialize JR.registerClass {
    name := "LimitCommandsVisitor",
    javaName := "org.allbinary.graphics.form.item.LimitCommandsVisitor",
    super := "Visitor",
    interfaces := #[],
    isInterface := false,
    fields := #[("isNotSmallDisplay", (JV.bool false))],
    statics := #[],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LimitCommandsVisitor


