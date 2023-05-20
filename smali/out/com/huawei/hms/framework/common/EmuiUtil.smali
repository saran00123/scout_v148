.class public Lcom/huawei/hms/framework/common/EmuiUtil;
.super Ljava/lang/Object;
.source "EmuiUtil.java"


# static fields
.field private static final BUILDEX_NAME:Ljava/lang/String; = "com.huawei.android.os.BuildEx"

.field public static final BUILDEX_VERSION:Ljava/lang/String; = "com.huawei.android.os.BuildEx$VERSION"

.field private static final EMUI_3_0:I = 0x7

.field private static final EMUI_3_1:I = 0x8

.field private static final EMUI_4_0:I = 0x9

.field private static final EMUI_4_1:I = 0xa

.field private static final EMUI_5_0:I = 0xb

.field private static final EMUI_6_0:I = 0xe

.field private static final EMUI_8_0_1:I = 0xf

.field private static final EMUI_9_0:I = 0x11

.field public static final EMUI_SDK_INT:Ljava/lang/String; = "EMUI_SDK_INT"

.field private static final EMUI_TYPE_UNKOWN:I = -0x1

.field public static final GET_PRIMARY_COLOR:Ljava/lang/String; = "getPrimaryColor"

.field public static final GET_SUGGESTION_FOR_GROUND_COLOR_STYLE:Ljava/lang/String; = "getSuggestionForgroundColorStyle"

.field public static final IMMERSION_STYLE:Ljava/lang/String; = "com.huawei.android.immersion.ImmersionStyle"

.field private static final TAG:Ljava/lang/String; = "KPMS_Util_Emui"

.field private static final TYPE_EMUI_30:I = 0x1e

.field private static final TYPE_EMUI_31:I = 0x1f

.field private static final TYPE_EMUI_40:I = 0x28

.field private static final TYPE_EMUI_41:I = 0x29

.field private static final TYPE_EMUI_50:I = 0x32

.field private static final TYPE_EMUI_60:I = 0x3c

.field private static final TYPE_EMUI_801:I = 0x51

.field private static final TYPE_EMUI_90:I = 0x5a

.field private static emuiType:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 138
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->initEmuiType()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getEMUIVersionCode()I
    .registers 4

    const-string v0, "com.huawei.android.os.BuildEx$VERSION"

    const-string v1, "EMUI_SDK_INT"

    .line 189
    invoke-static {v0, v1}, Lcom/huawei/hms/framework/common/ReflectionUtils;->getStaticFieldObj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KPMS_Util_Emui"

    if-eqz v0, :cond_19

    .line 193
    :try_start_c
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    move-exception v0

    const-string v2, "getEMUIVersionCode ClassCastException:"

    .line 195
    invoke-static {v1, v2, v0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    const/4 v0, 0x0

    .line 198
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the emui version code is::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method private static initEmuiType()V
    .registers 3

    .line 154
    invoke-static {}, Lcom/huawei/hms/framework/common/EmuiUtil;->getEMUIVersionCode()I

    move-result v0

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmuiType emuiVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KPMS_Util_Emui"

    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0x11

    if-lt v0, v1, :cond_23

    const/16 v0, 0x5a

    .line 160
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_23
    const/16 v1, 0xf

    if-lt v0, v1, :cond_2c

    const/16 v0, 0x51

    .line 162
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_2c
    const/16 v1, 0xe

    if-lt v0, v1, :cond_35

    const/16 v0, 0x3c

    .line 164
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_35
    const/16 v1, 0xb

    if-lt v0, v1, :cond_3e

    const/16 v0, 0x32

    .line 166
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_3e
    const/16 v1, 0xa

    if-lt v0, v1, :cond_47

    const/16 v0, 0x29

    .line 168
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_47
    const/16 v1, 0x9

    if-lt v0, v1, :cond_50

    const/16 v0, 0x28

    .line 170
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_50
    const/16 v1, 0x8

    if-lt v0, v1, :cond_59

    const/16 v0, 0x1f

    .line 172
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    goto :goto_60

    :cond_59
    const/4 v1, 0x7

    if-lt v0, v1, :cond_60

    const/16 v0, 0x1e

    .line 174
    sput v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    .line 176
    :cond_60
    :goto_60
    sget v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6a

    const-string v0, "emuiType is unkown"

    .line 177
    invoke-static {v2, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6a
    return-void
.end method

.method public static isEMUI()Z
    .registers 2

    .line 147
    sget v0, Lcom/huawei/hms/framework/common/EmuiUtil;->emuiType:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isUpPVersion()Z
    .registers 2

    const-string v0, "com.huawei.android.os.BuildEx"

    .line 208
    invoke-static {v0}, Lcom/huawei/hms/framework/common/ReflectionUtils;->checkCompatible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/huawei/android/os/BuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method
