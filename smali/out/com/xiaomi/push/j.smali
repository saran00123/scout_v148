.class final Lcom/xiaomi/push/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/push/j$b;,
        Lcom/xiaomi/push/j$c;,
        Lcom/xiaomi/push/j$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/j$a;
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_5b

    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_59

    new-instance v0, Lcom/xiaomi/push/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/push/j$b;-><init>(Lcom/xiaomi/push/k;)V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_51

    :try_start_2d
    invoke-virtual {v0}, Lcom/xiaomi/push/j$b;->a()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v3, Lcom/xiaomi/push/j$c;

    invoke-direct {v3, v1}, Lcom/xiaomi/push/j$c;-><init>(Landroid/os/IBinder;)V

    new-instance v1, Lcom/xiaomi/push/j$a;

    invoke-virtual {v3}, Lcom/xiaomi/push/j$c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/xiaomi/push/j$a;-><init>(Ljava/lang/String;Z)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_41} :catch_4b
    .catchall {:try_start_2d .. :try_end_41} :catchall_49

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-object v1

    :cond_45
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_51

    :catchall_49
    move-exception v1

    goto :goto_4d

    :catch_4b
    move-exception v1

    :try_start_4c
    throw v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_49

    :goto_4d
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v1

    :cond_51
    :goto_51
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Google Play connection failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_59
    move-exception p0

    throw p0

    :cond_5b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
