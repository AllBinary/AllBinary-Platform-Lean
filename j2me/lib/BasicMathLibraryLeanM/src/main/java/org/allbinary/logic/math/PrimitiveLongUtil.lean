-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PrimitiveLongUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "primitiveLongSingleton" (<- JR.callStatic "PrimitiveLongSingleton" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createPowerOfTen_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_powerOfTen : JV := (JR.asI (JR.arg jargs 0))
    let mut l_primitiveLongUtil : JV := (<- JR.new "PrimitiveLongUtil" #[l_powerOfTen, (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    if JR.truth (<- JR.ne (<- JR.rem l_powerOfTen (JV.int 10)) (JV.int 0)) then
        let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
        let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
        let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), l_primitiveLongUtil, (<- JR.getField l_commonStrings "CONSTRUCTOR"), (<- JR.new "Exception" #[(JV.str "Max must be power of 10")])])
        pure ()
    return l_primitiveLongUtil


def m_getCharArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt l_value (JV.int 10)) then
        let _ := (<- JR.call this "setCurrentTotalDigits_1" #[(JV.int 1)])
        return (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAYS") l_value)
    if JR.truth (<- JR.gt l_value (<- JR.getField this "maxValue")) then
        let _ := (<- JR.call this "setCurrentTotalDigits_1" #[(JV.int 3)])
        return (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "UNK")
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_div : JV := (JR.asI (<- JR.getField this "powerOfTen"))
    let mut l_lastValue : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.ge l_div (JV.int 1))) then break
        let mut l_digit : JV := (JR.asI (<- JR.div ((<- JR.sub l_value l_lastValue)) l_div))
        if JR.truth (<- JR.cand (<- JR.ge l_digit (JV.int 0)) (do pure (<- JR.lt l_digit (JV.int 10)))) then
            if JR.truth (<- JR.cand (<- JR.eq l_digit (JV.int 0)) (do pure (<- JR.eq l_index (JV.int 0)))) then
                pure ()
            else
                let jtemp3 : JV := l_index
                l_index := (JR.inc jtemp3)
                JR.aset (<- JR.getField this "charArray") jtemp3 (JR.asC (<- JR.aget (<- JR.getField (<- JR.getField this "primitiveLongSingleton") "NUMBER_CHAR_ARRAY") l_digit))
                pure ()
            l_lastValue := (JR.castLike l_lastValue (<- JR.add l_lastValue (<- JR.mul l_digit l_div)))
            pure ()
        l_div := (JR.asI (<- JR.div l_div (JV.int 10)))
        pure ()
    let _ := (<- JR.call this "setCurrentTotalDigits_1" #[l_index])
    return (<- JR.getField this "charArray")


def m_setCurrentTotalDigits_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentTotalDigits : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "currentTotalDigits" (JR.asI l_currentTotalDigits)
    pure JV.null


def m_getCurrentTotalDigits_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "currentTotalDigits"))


def m_getMaxDigits_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "maxDigits"))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_powerOfTen : JV := (JR.asI (JR.arg jargs 0))
    let mut l_unused : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "maxDigits" (JR.asI (<- JR.call (<- JR.callStatic "MathUtil" "getInstance_0" #[]) "getTotalDigits_1" #[l_powerOfTen]))
    JR.setField this "powerOfTen" (JR.asI l_powerOfTen)
    JR.setField this "maxValue" (JR.asI (<- JR.sub ((<- JR.mul l_powerOfTen (JV.int 10))) (JV.int 1)))
    JR.setField this "charArray" (<- JR.newArray "C" 1 #[(<- JR.getField this "maxDigits")])
    pure this

initialize JR.registerClass {
    name := "PrimitiveLongUtil",
    javaName := "org.allbinary.logic.math.PrimitiveLongUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("powerOfTen", (JV.int 0)), ("maxValue", (JV.int 0)), ("maxDigits", (JV.int 0)), ("charArray", JV.null), ("currentTotalDigits", (JV.int 0)), ("primitiveLongSingleton", JV.null)],
    statics := #[],
    methods := #[
        ("createPowerOfTen_1", #["int"], true, m_createPowerOfTen_1), 
        ("getCharArray_1", #["int"], false, m_getCharArray_1), 
        ("setCurrentTotalDigits_1", #["int"], false, m_setCurrentTotalDigits_1), 
        ("getCurrentTotalDigits_0", #[], false, m_getCurrentTotalDigits_0), 
        ("getMaxDigits_0", #[], false, m_getMaxDigits_0), 
        ("jinit_2", #["int", "Any"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PrimitiveLongUtil


