.class public Lcom/huawei/hms/framework/common/ActivityUtil;
.super Ljava/lang/Object;
.source "ActivityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUtil"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 6

    const-string v0, "ActivityUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 57
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 62
    :cond_b
    :try_start_b
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "dealType rethrowFromSystemServer:"

    .line 64
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-object v1
.end method

.method public static isForeground(Landroid/content/Context;)Z
    .registers 6

    const-string v0, "ActivityUtil"

    if-eqz p0, :cond_49

    const-string v1, "activity"

    .line 32
    invoke-static {p0, v1}, Lcom/huawei/hms/framework/common/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    if-eqz v1, :cond_49

    const/4 v2, 0x0

    .line 36
    :try_start_f
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_13} :catch_14

    goto :goto_1a

    :catch_14
    move-exception v1

    const-string v3, "activityManager getRunningAppProcesses occur exception: "

    .line 38
    invoke-static {v0, v3, v1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1a
    if-eqz v2, :cond_49

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 42
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v3, :cond_20

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 43
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_20

    const-string p0, "isForeground true"

    .line 44
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method
