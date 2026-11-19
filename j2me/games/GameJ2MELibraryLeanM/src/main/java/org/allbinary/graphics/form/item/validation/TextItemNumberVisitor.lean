-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item.validation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TextItemNumberVisitor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_value : JV := l_anyType
    if JR.truth (<- JR.lt (<- JR.call l_value "length_0" #[]) (JV.int 2)) then
        let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
        if JR.truth (<- JR.call l_stringValidationUtil "isNumber_1" #[l_value]) then
            return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")
        else
            try
                let _ := (<- JR.call (<- JR.callStatic "TextNotificationUtil" "getInstance_0" #[]) "fireError_1" #[(JV.str "Numbers Only")])
                pure ()
            catch jex0 =>
                if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                    let mut l_e : JV := jex0
                    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "VISIT"), l_e])
                    pure ()
                else
                    throw jex0
            return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
        pure ()
    else
        return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Visitor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TextItemNumberVisitor",
    javaName := "org.allbinary.graphics.form.item.validation.TextItemNumberVisitor",
    super := "Visitor",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TextItemNumberVisitor


