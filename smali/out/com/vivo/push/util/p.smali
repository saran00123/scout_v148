.class public final Lcom/vivo/push/util/p;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .registers 2

    :try_start_0
    const-string v0, "connectivity"

    .line 77
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 78
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-string v0, "NetUtils"

    .line 81
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
