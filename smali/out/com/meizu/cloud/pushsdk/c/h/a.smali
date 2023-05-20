.class public final Lcom/meizu/cloud/pushsdk/c/h/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/meizu/cloud/pushsdk/c/c/k;Lcom/meizu/cloud/pushsdk/c/a/b;)V
    .registers 3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/a/b;->f()Lcom/meizu/cloud/pushsdk/c/a/e;

    move-result-object p1

    sget-object v0, Lcom/meizu/cloud/pushsdk/c/a/e;->d:Lcom/meizu/cloud/pushsdk/c/a/e;

    if-eq p1, v0, :cond_47

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/k;->b()Lcom/meizu/cloud/pushsdk/c/c/l;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/k;->b()Lcom/meizu/cloud/pushsdk/c/c/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/c/c/l;->a()Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object p1

    if-eqz p1, :cond_47

    :try_start_1a
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/k;->b()Lcom/meizu/cloud/pushsdk/c/c/l;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/c/c/l;->a()Lcom/meizu/cloud/pushsdk/c/g/d;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/cloud/pushsdk/c/g/d;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_25} :catch_31
    .catchall {:try_start_1a .. :try_end_25} :catchall_2f

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result p0

    if-eqz p0, :cond_47

    :goto_2b
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_47

    :catchall_2f
    move-exception p0

    goto :goto_3d

    :catch_31
    :try_start_31
    const-string p0, "Unable to close source data"

    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/c/a/a;->a(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2f

    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result p0

    if-eqz p0, :cond_47

    goto :goto_2b

    :goto_3d
    invoke-static {}, Lcom/meizu/cloud/pushsdk/util/MinSdkChecker;->isSupportNotificationChannel()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    :cond_46
    throw p0

    :cond_47
    :goto_47
    return-void
.end method
