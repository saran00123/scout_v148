.class public final Lcom/huawei/hms/availableupdate/i;
.super Ljava/lang/Object;
.source "UpdateStatus.java"


# direct methods
.method public static a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_46

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_43

    const/16 v0, 0x834

    if-eq p0, v0, :cond_40

    const/16 v0, 0x835

    if-eq p0, v0, :cond_3d

    packed-switch p0, :pswitch_data_4a

    packed-switch p0, :pswitch_data_54

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_28
    const-string p0, "DOWNLOAD_NO_STORAGE"

    return-object p0

    :pswitch_2b
    const-string p0, "DOWNLOAD_NO_SPACE"

    return-object p0

    :pswitch_2e
    const-string p0, "DOWNLOAD_HASH_ERROR"

    return-object p0

    :pswitch_31
    const-string p0, "DOWNLOAD_FAILURE"

    return-object p0

    :pswitch_34
    const-string p0, "CHECK_NO_SUPPORTED"

    return-object p0

    :pswitch_37
    const-string p0, "CHECK_NO_UPDATE"

    return-object p0

    :pswitch_3a
    const-string p0, "CHECK_FAILURE"

    return-object p0

    :cond_3d
    const-string p0, "DOWNLOAD_CANCELED"

    return-object p0

    :cond_40
    const-string p0, "DOWNLOADING"

    return-object p0

    :cond_43
    const-string p0, "DOWNLOAD_SUCCESS"

    return-object p0

    :cond_46
    const-string p0, "CHECK_OK"

    return-object p0

    nop

    :pswitch_data_4a
    .packed-switch 0x4b1
        :pswitch_3a
        :pswitch_37
        :pswitch_34
    .end packed-switch

    :pswitch_data_54
    .packed-switch 0x899
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method
