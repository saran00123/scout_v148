.class public Lcom/huawei/hms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;
.source "CommonStatusCodes.java"


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_52

    if-eqz p0, :cond_4f

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4c

    const/16 v0, 0x232c

    if-eq p0, v0, :cond_49

    packed-switch p0, :pswitch_data_56

    packed-switch p0, :pswitch_data_68

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_25
    const-string p0, "INTERNAL_ERROR"

    return-object p0

    :pswitch_28
    const-string p0, "NETWORK_ERROR"

    return-object p0

    :pswitch_2b
    const-string p0, "RESOLUTION_REQUIRED"

    return-object p0

    :pswitch_2e
    const-string p0, "INVALID_ACCOUNT"

    return-object p0

    :pswitch_31
    const-string p0, "SIGN_IN_REQUIRED"

    return-object p0

    :pswitch_34
    const-string p0, "SERVICE_DISABLED"

    return-object p0

    :pswitch_37
    const-string p0, "SERVICE_VERSION_UPDATE_REQUIRED"

    return-object p0

    :pswitch_3a
    const-string p0, "API_NOT_CONNECTED"

    return-object p0

    :pswitch_3d
    const-string p0, "CANCELED"

    return-object p0

    :pswitch_40
    const-string p0, "TIMEOUT"

    return-object p0

    :pswitch_43
    const-string p0, "INTERRUPTED"

    return-object p0

    :pswitch_46
    const-string p0, "ERROR"

    return-object p0

    :cond_49
    const-string p0, "DEAD_CLIENT"

    return-object p0

    :cond_4c
    const-string p0, "DEVELOPER_ERROR"

    return-object p0

    :cond_4f
    const-string p0, "SUCCESS"

    return-object p0

    :cond_52
    const-string p0, "SUCCESS_CACHE"

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_37
        :pswitch_34
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0xd
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
    .end packed-switch
.end method
