-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationCentral

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameControlFidelity" (JR.asI (JV.int 36))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfigurationCentral" "SINGLETON" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GameConfigurationCentral" "SINGLETON") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GameConfigurationCentral" "SINGLETON" (<- JR.new "GameConfigurationCentral" #[])
        pure ()
    return (<- JR.getStatic "GameConfigurationCentral" "SINGLETON")


def m_load_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    try
        let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
        let mut l_keyValuePersistance : JV := (<- JR.callStatic "GameConfigurationPersistanceSingleton" "getInstance_0" #[])
        let _ := (<- JR.call l_keyValuePersistance "clear_0" #[])
        let _ := (<- JR.call l_keyValuePersistance "loadAll_1" #[l_abeClientInformation])
        let mut l_list : JV := (<- JR.call l_keyValuePersistance "getIds_0" #[])
        if JR.truth (<- JR.gt (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
            let mut l_hashtable : JV := (<- JR.call l_keyValuePersistance "get_1" #[(JV.int 0)])
            let mut l_anyType : JV := (<- JR.call (<- JR.getField this "SCALE") "getName_0" #[])
            let mut l_value : JV := (<- JR.call l_hashtable "get_1" #[l_anyType])
            let _ := (<- JR.call (<- JR.getField this "SCALE") "setValue_1" #[(<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.call (<- JR.callStatic "Integer" "valueOf_1" #[l_value]) "intValue_0" #[])])])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "No Game Configuration To Load"), this, (<- JR.getField l_commonStrings "LOAD")])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "LOAD"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_setGameControlFidelity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameControlFidelity : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "gameControlFidelity" (JR.asI l_gameControlFidelity)
    pure JV.null


def m_getGameControlFidelity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "gameControlFidelity"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "SCALE") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "SCALE") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "ORIENTATION") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "ORIENTATION") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "SENSOR_UPDATE_RATE") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "SENSOR_UPDATE_RATE") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "VIBRATION") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "VIBRATION") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "CHALLENGE_LEVEL") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "COLLIDE_DAMAGE") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "COLLIDE_DAMAGE") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "DURABILITY_CHALLENGE_LEVEL") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "DURABILITY_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "SPEED_CHALLENGE_LEVEL") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "SPEED_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "ATTACK_CHALLENGE_LEVEL") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "ATTACK_CHALLENGE_LEVEL") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "CONTROL_LEVEL") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "CONTROL_LEVEL") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "SPEED") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "SPEED") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "MAX_GAME_OBJECTS") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "MAX_GAME_OBJECTS") "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "COMMA_SEP")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "MAX_LAYERS") "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonStrings "EQUALS")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call (<- JR.getField this "MAX_LAYERS") "getValue_0" #[]) "intValue_0" #[]))])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    JR.setField this "SCALE" (<- JR.new "GameConfiguration" #[(JV.str "Scale"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 2)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 2)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)])])
    JR.setField this "ORIENTATION" (<- JR.new "GameConfiguration" #[(JV.str "Orientation"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 8)])])
    JR.setField this "SENSOR_UPDATE_RATE" (<- JR.new "GameConfiguration" #[(JV.str "Sensor Update Rate"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)])])
    JR.setField this "VIBRATION" (<- JR.new "GameConfiguration" #[(JV.str "Vibration"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)])])
    JR.setField this "CHALLENGE_LEVEL" (<- JR.new "GameConfiguration" #[(JV.str "Global Challenge Level"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "COLLIDE_DAMAGE" (<- JR.new "GameConfiguration" #[(JV.str "Collide Damage Challenge Level"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "DURABILITY_CHALLENGE_LEVEL" (<- JR.new "GameConfiguration" #[(JV.str "Enemy Durability Challenge Level"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "SPEED_CHALLENGE_LEVEL" (<- JR.new "GameConfiguration" #[(JV.str "Enemy Speed Challenge Level"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "ATTACK_CHALLENGE_LEVEL" (<- JR.new "GameConfiguration" #[(JV.str "Enemy Attack Challenge Level"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 3)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "CONTROL_LEVEL" (<- JR.new "GameConfiguration" #[(JV.str "Control Fidelity"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 5)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "PLAYER_INPUT_WAIT" (<- JR.new "GameConfiguration" #[(JV.str "Input Wait"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 5)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "SPEED" (<- JR.new "GameConfiguration" #[(JV.str "Game Speed (Device Specific)"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 5)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "SOUND_VOLUME" (<- JR.new "GameConfiguration" #[(JV.str "Sound Volume"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 6)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])])
    JR.setField this "MAX_GAME_OBJECTS" (<- JR.new "GameConfiguration" #[(JV.str "Max Game Objects"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 20)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 50)])])
    JR.setField this "MAX_LAYERS" (<- JR.new "GameConfiguration" #[(JV.str "Max Layers"), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 20)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 1)]), (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 50)])])
    pure this

initialize JR.registerClass {
    name := "GameConfigurationCentral",
    javaName := "org.allbinary.game.configuration.GameConfigurationCentral",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("SCALE", JV.null), ("ORIENTATION", JV.null), ("SENSOR_UPDATE_RATE", JV.null), ("VIBRATION", JV.null), ("CHALLENGE_LEVEL", JV.null), ("COLLIDE_DAMAGE", JV.null), ("DURABILITY_CHALLENGE_LEVEL", JV.null), ("SPEED_CHALLENGE_LEVEL", JV.null), ("ATTACK_CHALLENGE_LEVEL", JV.null), ("CONTROL_LEVEL", JV.null), ("PLAYER_INPUT_WAIT", JV.null), ("SPEED", JV.null), ("SOUND_VOLUME", JV.null), ("MAX_GAME_OBJECTS", JV.null), ("MAX_LAYERS", JV.null), ("gameControlFidelity", (JV.int 0))],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("load_1", #["AbeClientInformationInterface"], false, m_load_1), 
        ("setGameControlFidelity_1", #["int"], false, m_setGameControlFidelity_1), 
        ("getGameControlFidelity_0", #[], false, m_getGameControlFidelity_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationCentral


