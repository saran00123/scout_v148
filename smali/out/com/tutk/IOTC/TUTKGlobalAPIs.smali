.class public Lcom/tutk/IOTC/TUTKGlobalAPIs;
.super Ljava/lang/Object;
.source "TUTKGlobalAPIs.java"


# static fields
.field public static final TUTK_ER_ALREADY_INITIALIZED:I = -0x3e9

.field public static final TUTK_ER_INVALID_ARG:I = -0x3ea

.field public static final TUTK_ER_INVALID_LICENSE_KEY:I = -0x3ec

.field public static final TUTK_ER_MEM_INSUFFICIENT:I = -0x3eb

.field public static final TUTK_ER_NoERROR:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "TUTKGlobalAPIs"

    .line 28
    invoke-static {v0}, Lcom/tutk/IOTC/util/LoadLibrary;->load(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native TUTK_SDK_Set_License_Key(Ljava/lang/String;)I
.end method

.method public static native TUTK_Set_Log_Attr(Lcom/tutk/IOTC/St_LogAttr;)I
.end method

.method public static native TUTK_Set_Region(Lcom/tutk/IOTC/Region;)I
.end method
