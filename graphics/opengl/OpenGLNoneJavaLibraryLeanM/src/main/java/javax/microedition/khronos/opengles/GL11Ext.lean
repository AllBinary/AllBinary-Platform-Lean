-- Generated Code Do Not Modify
-- package javax.microedition.khronos.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GL11Ext

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "GL11Ext",
    javaName := "javax.microedition.khronos.opengles.GL11Ext",
    super := "Object",
    interfaces := #["GL"],
    isInterface := true,
    fields := #[],
    statics := #[("GL_MATRIX_INDEX_ARRAY_BUFFER_BINDING_OES", (JR.asI (JV.int 35742))), ("GL_MATRIX_INDEX_ARRAY_OES", (JR.asI (JV.int 34884))), ("GL_MATRIX_INDEX_ARRAY_POINTER_OES", (JR.asI (JV.int 34889))), ("GL_MATRIX_INDEX_ARRAY_SIZE_OES", (JR.asI (JV.int 34886))), ("GL_MATRIX_INDEX_ARRAY_STRIDE_OES", (JR.asI (JV.int 34888))), ("GL_MATRIX_INDEX_ARRAY_TYPE_OES", (JR.asI (JV.int 34887))), ("GL_MATRIX_PALETTE_OES", (JR.asI (JV.int 34880))), ("GL_MAX_PALETTE_MATRICES_OES", (JR.asI (JV.int 34882))), ("GL_MAX_VERTEX_UNITS_OES", (JR.asI (JV.int 34468))), ("GL_TEXTURE_CROP_RECT_OES", (JR.asI (JV.int 35741))), ("GL_WEIGHT_ARRAY_BUFFER_BINDING_OES", (JR.asI (JV.int 34974))), ("GL_WEIGHT_ARRAY_OES", (JR.asI (JV.int 34477))), ("GL_WEIGHT_ARRAY_POINTER_OES", (JR.asI (JV.int 34476))), ("GL_WEIGHT_ARRAY_SIZE_OES", (JR.asI (JV.int 34475))), ("GL_WEIGHT_ARRAY_STRIDE_OES", (JR.asI (JV.int 34474))), ("GL_WEIGHT_ARRAY_TYPE_OES", (JR.asI (JV.int 34473)))],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GL11Ext


