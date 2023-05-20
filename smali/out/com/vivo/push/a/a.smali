.class public final Lcom/vivo/push/a/a;
.super Ljava/lang/Object;
.source "CommandBridge.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "CommandBridge"

    if-eqz p0, :cond_16

    .line 84
    :try_start_4
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v1

    const-string v2, "start service error"

    .line 87
    invoke-static {v0, v2, v1}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_16
    const-string p0, "enter startService context is null"

    .line 80
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "context is null"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/vivo/push/g;)V
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 44
    invoke-virtual {p2}, Lcom/vivo/push/g;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v1, "com.vivo.vms.upstageservice"

    goto :goto_b

    :cond_9
    const-string v1, "com.vivo.vms.aidlservice"

    .line 46
    :goto_b
    invoke-static {p0, v1}, Lcom/vivo/push/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/vivo/push/b;

    move-result-object v1

    .line 1127
    iget-object v2, v1, Lcom/vivo/push/b;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/push/util/r;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vivo/push/b;->b:Ljava/lang/String;

    .line 1128
    iget-object v2, v1, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 1129
    iget-object v2, v1, Lcom/vivo/push/b;->c:Landroid/content/Context;

    const-string v4, "push pkgname is null"

    invoke-static {v2, v4}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3b

    .line 1132
    :cond_28
    iget-object v2, v1, Lcom/vivo/push/b;->c:Landroid/content/Context;

    iget-object v4, v1, Lcom/vivo/push/b;->b:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/vivo/push/util/y;->a(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x4ec

    cmp-long v2, v4, v6

    if-ltz v2, :cond_37

    const/4 v3, 0x1

    :cond_37
    iput-boolean v3, v1, Lcom/vivo/push/b;->a:Z

    .line 1133
    iget-boolean v3, v1, Lcom/vivo/push/b;->a:Z

    .line 2026
    :goto_3b
    iget-object v2, p2, Lcom/vivo/push/g;->b:Ljava/lang/String;

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2030
    iput-object v2, p2, Lcom/vivo/push/g;->b:Ljava/lang/String;

    :cond_49
    const-string v2, "CommandBridge"

    if-eqz v3, :cond_79

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.vivo.pushservice"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 54
    new-instance v3, Lcom/vivo/push/a;

    .line 3026
    iget-object v4, p2, Lcom/vivo/push/g;->b:Ljava/lang/String;

    .line 54
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v3, v4, p1, v5}, Lcom/vivo/push/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p2, v3}, Lcom/vivo/push/g;->a(Lcom/vivo/push/a;)V

    .line 3182
    iget-object v3, v3, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    .line 56
    invoke-virtual {v1, v3}, Lcom/vivo/push/b;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_71

    return-void

    :cond_71
    const-string v1, "send command error by aidl"

    .line 60
    invoke-static {v2, v1}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {p0, v1}, Lcom/vivo/push/util/n;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    :cond_79
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.vivo.pushservice.action.METHOD"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_88

    const-string v0, "com.vivo.push.sdk.service.UpstageService"

    goto :goto_8a

    :cond_88
    const-string v0, "com.vivo.push.sdk.service.PushService"

    .line 66
    :goto_8a
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4046
    invoke-static {v1}, Lcom/vivo/push/a;->a(Landroid/content/Intent;)Lcom/vivo/push/a;

    move-result-object p1

    if-nez p1, :cond_9b

    const-string p1, "PushCommand"

    const-string p2, "bundleWapper is null"

    .line 4048
    invoke-static {p1, p2}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 4051
    :cond_9b
    invoke-virtual {p2, p1}, Lcom/vivo/push/g;->a(Lcom/vivo/push/a;)V

    .line 4182
    iget-object p1, p1, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-eqz p1, :cond_a5

    .line 4054
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    :cond_a5
    :goto_a5
    :try_start_a5
    invoke-static {p0, v1}, Lcom/vivo/push/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    return-void

    :catch_a9
    move-exception p0

    const-string p1, "CommandBridge startService exception: "

    .line 73
    invoke-static {v2, p1, p0}, Lcom/vivo/push/util/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    const-string v0, "CommandBridge"

    .line 176
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 180
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x240

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gtz p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x1

    return p0

    .line 182
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "action check error\uff1aaction>>"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";pkgname>>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    const-string p0, "queryBroadcastReceivers error"

    .line 188
    invoke-static {v0, p0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method
