.class public abstract Lcom/huawei/hms/utils/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/utils/NetWorkUtil$NetType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .registers 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eqz p0, :cond_35

    .line 6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_13

    move v0, v1

    goto :goto_36

    .line 9
    :cond_13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_2e

    .line 10
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_2c

    packed-switch p0, :pswitch_data_38

    const/4 v0, 0x6

    goto :goto_36

    :pswitch_26
    const/4 v0, 0x4

    goto :goto_36

    :pswitch_28
    const/4 v0, 0x3

    goto :goto_36

    :pswitch_2a
    const/4 v0, 0x2

    goto :goto_36

    :cond_2c
    const/4 v0, 0x5

    goto :goto_36

    .line 43
    :cond_2e
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result p0

    if-ne v0, p0, :cond_35

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_28
        :pswitch_2a
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_26
        :pswitch_26
        :pswitch_28
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_f

    .line 5
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/utils/NetWorkUtil;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/utils/NetWorkUtil;->a(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0
.end method
