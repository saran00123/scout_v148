.class public Lcom/alibaba/sdk/android/push/common/util/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)Lcom/alibaba/sdk/android/push/common/util/b/a$a;
    .registers 3

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    sget-object p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->b:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0

    :cond_18
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_34

    sget-object p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->a:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0

    :pswitch_2a
    sget-object p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->e:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0

    :pswitch_2d
    sget-object p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->d:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0

    :pswitch_30
    sget-object p0, Lcom/alibaba/sdk/android/push/common/util/b/a$a;->c:Lcom/alibaba/sdk/android/push/common/util/b/a$a;

    return-object p0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_2d
        :pswitch_30
        :pswitch_2d
        :pswitch_2d
        :pswitch_30
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method
