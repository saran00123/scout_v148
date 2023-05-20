.class public Lcom/huawei/hms/framework/common/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextCompat"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "ContextCompat"

    const/4 v1, 0x0

    if-eqz p0, :cond_20

    if-nez p1, :cond_8

    goto :goto_20

    .line 42
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 43
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 42
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_14} :catch_19

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    move v1, p0

    goto :goto_1f

    :catch_19
    move-exception p0

    const-string p1, "dealType rethrowFromSystemServer:"

    .line 45
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    :goto_1f
    return v1

    :cond_20
    :goto_20
    const-string p0, "param is null"

    .line 36
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method

.method public static getProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    if-nez p0, :cond_b

    const-string p0, "ContextCompat"

    const-string v0, "context is null"

    .line 58
    invoke-static {p0, v0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_12

    return-object p0

    .line 64
    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "ContextCompat"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 157
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 162
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "SystemServer error:"

    .line 164
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-object v1
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 5

    const-string v0, "ContextCompat"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 78
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 83
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "dealType rethrowFromSystemServer:"

    .line 85
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-object v1
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .registers 7

    const-string v0, "ContextCompat"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 103
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 108
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "dealType rethrowFromSystemServer:"

    .line 110
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-object v1
.end method

.method public static startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    .registers 4

    const-string v0, "ContextCompat"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "context is null"

    .line 138
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 143
    :cond_b
    :try_start_b
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_10

    goto :goto_16

    :catch_10
    move-exception p0

    const-string p1, "SystemServer error:"

    .line 145
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_16
    return-object v1
.end method

.method public static unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    const-string v0, "ContextCompat"

    if-nez p0, :cond_a

    const-string p0, "context is null"

    .line 121
    invoke-static {v0, p0}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 125
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_14

    :catch_e
    move-exception p0

    const-string p1, "SystemServer error:"

    .line 127
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method
