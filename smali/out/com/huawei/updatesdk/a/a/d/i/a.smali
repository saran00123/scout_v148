.class public Lcom/huawei/updatesdk/a/a/d/i/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Landroid/net/ConnectivityManager;


# direct methods
.method public static a(Landroid/net/NetworkInfo;)I
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v0, v2, :cond_26

    const/16 v3, 0xd

    if-ne v3, v2, :cond_15

    goto :goto_26

    :cond_15
    if-nez v2, :cond_25

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    packed-switch p0, :pswitch_data_28

    goto :goto_25

    :pswitch_1f
    const/4 v0, 0x4

    goto :goto_26

    :pswitch_21
    const/4 v0, 0x3

    goto :goto_26

    :pswitch_23
    const/4 v0, 0x2

    goto :goto_26

    :cond_25
    :goto_25
    move v0, v1

    :cond_26
    :goto_26
    return v0

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 1

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/i/a;->b(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method private static b(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .registers 2

    sget-object v0, Lcom/huawei/updatesdk/a/a/d/i/a;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    sput-object p0, Lcom/huawei/updatesdk/a/a/d/i/a;->a:Landroid/net/ConnectivityManager;

    :cond_12
    sget-object p0, Lcom/huawei/updatesdk/a/a/d/i/a;->a:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/i/a;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/i/a;->a(Landroid/net/NetworkInfo;)I

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .registers 1

    if-eqz p0, :cond_16

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/d/i/a;->b(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method
