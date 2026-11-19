-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "GAUGE_UPDATE" (JV.str "Gauge Update: ")
    JR.setField this "FROM" (JV.str " from: ")
    JR.setField this "TO" (JV.str " to: ")
    JR.setField this "COMPETITION_VALUE" (JR.asI (JV.int 1))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfigurationUtil" "instance" (<- JR.new "GameConfigurationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameConfigurationUtil" "instance")


def m_change_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOptionsForm : JV := (JR.arg jargs 0)
    let mut l_gauge : JV := (JR.arg jargs 1)
    let _ := (<- JR.call this "update_1" #[l_gauge])
    let mut l_gameConfigurationSingleton : JV := (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[])
    let mut l_gameConfiguration : JV := (<- JR.call l_gameConfigurationSingleton "getInstanceByName_1" #[(<- JR.call l_gauge "getLabel_0" #[])])
    let _ := (<- JR.call this "updateChallange_2" #[l_gameOptionsForm, l_gameConfiguration])
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gauge : JV := (JR.arg jargs 0)
    let mut l_gameConfigurationSingleton : JV := (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[])
    let mut l_gameConfiguration : JV := (<- JR.call l_gameConfigurationSingleton "getInstanceByName_1" #[(<- JR.call l_gauge "getLabel_0" #[])])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    let mut l_value : JV := (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.add (<- JR.call l_gauge "getValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "GAUGE_UPDATE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_gameConfiguration "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "FROM")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call l_gameConfiguration "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "TO")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call l_value "intValue_0" #[]))])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
    let _ := (<- JR.call l_gameConfiguration "setValue_1" #[l_value])
    pure JV.null


def m_setDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gauge : JV := (JR.arg jargs 0)
    let mut l_gameConfigurationSingleton : JV := (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[])
    let mut l_gameConfiguration : JV := (<- JR.call l_gameConfigurationSingleton "getInstanceByName_1" #[(<- JR.call l_gauge "getLabel_0" #[])])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Gauge Default: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_gameConfiguration "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "TO")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call l_gameConfiguration "getDefaultValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "setDefault")])
    let _ := (<- JR.call l_gauge "setValue_1" #[(<- JR.sub (<- JR.call (<- JR.call l_gameConfiguration "getDefaultValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_gameConfiguration "setValue_1" #[(<- JR.call l_gameConfiguration "getDefaultValue_0" #[])])
    pure JV.null


def m_updateChallange_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOptionsForm : JV := (JR.arg jargs 0)
    let mut l_gameConfiguration : JV := (JR.arg jargs 1)
    let mut l_gameConfigurationSingleton : JV := (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[])
    let mut l_gameConfigurationCentral : JV := (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_gameConfiguration (<- JR.getField l_gameConfigurationCentral "CHALLENGE_LEVEL")) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "updateChallange")])
        let _ := (<- JR.call (<- JR.getField l_gameConfigurationCentral "COLLIDE_DAMAGE") "setValue_1" #[(<- JR.call l_gameConfiguration "getValue_0" #[])])
        let _ := (<- JR.call (<- JR.getField l_gameConfigurationCentral "ATTACK_CHALLENGE_LEVEL") "setValue_1" #[(<- JR.call l_gameConfiguration "getValue_0" #[])])
        let _ := (<- JR.call (<- JR.getField l_gameConfigurationCentral "DURABILITY_CHALLENGE_LEVEL") "setValue_1" #[(<- JR.call l_gameConfiguration "getValue_0" #[])])
        let _ := (<- JR.call (<- JR.getField l_gameConfigurationCentral "SPEED_CHALLENGE_LEVEL") "setValue_1" #[(<- JR.call l_gameConfiguration "getValue_0" #[])])
        let mut l_size : JV := (JR.asI (<- JR.call l_gameOptionsForm "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let mut l_item : JV := (<- JR.call l_gameOptionsForm "get_1" #[l_index])
                if JR.truth (<- JR.instanceOf l_item "GameConfigurationGauge") then
                    let mut l_gauge : JV := l_item
                    let mut l_name : JV := (<- JR.call l_item "getLabel_0" #[])
                    let mut l_nextGameConfiguration : JV := (<- JR.call l_gameConfigurationSingleton "getInstanceByName_1" #[l_name])
                    if JR.truth (<- JR.eq l_nextGameConfiguration (<- JR.getField l_gameConfigurationCentral "COLLIDE_DAMAGE")) then
                        let _ := (<- JR.call l_gauge "setValue_1" #[(<- JR.sub (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "COLLIDE_DAMAGE") "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
                        pure ()
                    else
                        if JR.truth (<- JR.eq l_nextGameConfiguration (<- JR.getField l_gameConfigurationCentral "DURABILITY_CHALLENGE_LEVEL")) then
                            let _ := (<- JR.call l_gauge "setValue_1" #[(<- JR.sub (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "DURABILITY_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
                            pure ()
                        else
                            if JR.truth (<- JR.eq l_nextGameConfiguration (<- JR.getField l_gameConfigurationCentral "ATTACK_CHALLENGE_LEVEL")) then
                                let _ := (<- JR.call l_gauge "setValue_1" #[(<- JR.sub (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "ATTACK_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
                                pure ()
                            else
                                if JR.truth (<- JR.eq l_nextGameConfiguration (<- JR.getField l_gameConfigurationCentral "SPEED_CHALLENGE_LEVEL")) then
                                    let _ := (<- JR.call l_gauge "setValue_1" #[(<- JR.sub (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "SPEED_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))])
                                    pure ()
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_updateCompetitionValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "updateCompetitionValue")])
    let mut l_gameConfigurationCentral : JV := (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[])
    JR.setField this "COMPETITION_VALUE" (JR.asI (<- JR.add (<- JR.add (<- JR.add (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "COLLIDE_DAMAGE") "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "ATTACK_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[])) (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "DURABILITY_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[])) (<- JR.call (<- JR.call (<- JR.getField l_gameConfigurationCentral "SPEED_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[])))
    JR.setField this "COMPETITION_VALUE" (JR.asI ((<- JR.shr (<- JR.getField this "COMPETITION_VALUE") (JV.int 2))))
    pure JV.null


def m_getCompetitionValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "COMPETITION_VALUE"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameConfigurationUtil",
    javaName := "org.allbinary.game.configuration.GameConfigurationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("GAUGE_UPDATE", JV.null), ("FROM", JV.null), ("TO", JV.null), ("COMPETITION_VALUE", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("change_2", #["GameOptionsForm", "GameConfigurationGauge"], false, m_change_2), 
        ("update_1", #["GameConfigurationGauge"], false, m_update_1), 
        ("setDefault_1", #["GameConfigurationGauge"], false, m_setDefault_1), 
        ("updateChallange_2", #["GameOptionsForm", "GameConfiguration"], false, m_updateChallange_2), 
        ("updateCompetitionValue_0", #[], false, m_updateCompetitionValue_0), 
        ("getCompetitionValue_0", #[], false, m_getCompetitionValue_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationUtil


