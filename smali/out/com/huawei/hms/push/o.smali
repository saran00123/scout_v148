.class public Lcom/huawei/hms/push/o;
.super Ljava/lang/Object;
.source "PushNotification.java"


# static fields
.field public static a:I


# direct methods
.method public static a(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/Notification;
    .registers 6

    .line 48
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {p1}, Lcom/huawei/hms/push/m;->a(Lcom/huawei/hms/push/k;)Lcom/huawei/hms/push/n;

    move-result-object v1

    .line 50
    sget-object v2, Lcom/huawei/hms/push/n;->b:Lcom/huawei/hms/push/n;

    if-ne v1, v2, :cond_14

    .line 51
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/push/m;->a(Landroid/app/Notification$Builder;Ljava/lang/String;Lcom/huawei/hms/push/k;)V

    .line 52
    :cond_14
    invoke-static {p0, v0, p1}, Lcom/huawei/hms/push/l;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V

    .line 53
    invoke-static {p1, v0}, Lcom/huawei/hms/push/o;->b(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V

    .line 54
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/push/o;->b(Landroid/content/Context;Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V

    .line 55
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V

    .line 56
    invoke-static {v0}, Lcom/huawei/hms/push/o;->a(Landroid/app/Notification$Builder;)V

    .line 57
    invoke-static {p1, v0}, Lcom/huawei/hms/push/o;->a(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V

    .line 58
    invoke-static {p1, v0}, Lcom/huawei/hms/push/o;->c(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V

    .line 59
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/push/o;->c(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 60
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/push/o;->b(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 61
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_42

    const-string p2, "HwPushChannelID"

    .line 62
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 63
    :cond_42
    invoke-static {p0, v0, p1}, Lcom/huawei/hms/push/o;->b(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V

    .line 64
    invoke-static {p0, v0, p1}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V

    .line 65
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/huawei/hms/push/k;[ILjava/lang/String;I)Landroid/content/Intent;
    .registers 8

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.intent.action.PUSH_DELAY_NOTIFY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->o()[B

    move-result-object v1

    const-string v2, "selfshow_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v1

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->y()[B

    move-result-object p1

    const-string v2, "selfshow_token"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "selfshow_event_id"

    .line 43
    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x0

    aget p3, p2, p3

    const-string v1, "selfshow_notify_id"

    .line 44
    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const/4 p3, 0x3

    aget p2, p2, p3

    const-string p3, "selfshow_auto_clear_id"

    .line 45
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public static a(Landroid/app/Notification$Builder;)V
    .registers 3

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 66
    sget v0, Lcom/huawei/hms/android/HwBuildEx$VERSION;->EMUI_SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_53

    invoke-static {p0}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 67
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object p2

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the package name of notification is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushSelfShowLog"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 71
    invoke-static {p0, p2}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the app name is:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_50

    const-string p2, "android.extraAppName"

    .line 73
    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 74
    :cond_50
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_53
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;JI)V
    .registers 9

    const-string v0, "PushSelfShowLog"

    .line 75
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_44

    const-string v2, "enter setDelayAlarm(intent:"

    :try_start_9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_44

    const-string v2, " interval:"

    :try_start_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1b} :catch_44

    const-string v2, "ms, context:"

    :try_start_1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2a} :catch_44

    const-string v1, "alarm"

    .line 78
    :try_start_2c
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    if-eqz v1, :cond_5d

    const/high16 v2, 0x8000000

    .line 79
    invoke-static {p0, p4, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const/4 p1, 0x0

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-virtual {v1, p1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_43} :catch_44

    goto :goto_5d

    :catch_44
    move-exception p0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "set DelayAlarm error."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/huawei/hms/push/k;)V
    .registers 11

    const-class v0, Lcom/huawei/hms/push/o;

    monitor-enter v0

    if-eqz p0, :cond_1aa

    if-nez p1, :cond_9

    goto/16 :goto_1aa

    .line 1
    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNotification, the msg id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PushSelfShowLog"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget v1, Lcom/huawei/hms/push/o;->a:I

    if-nez v1, :cond_44

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sput v1, Lcom/huawei/hms/push/o;->a:I

    .line 4
    :cond_44
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d6

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->q()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 8
    invoke-virtual {p1, v1}, Lcom/huawei/hms/push/k;->a(I)V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notification msgTag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PushSelfShowLog"

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_76
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->s()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_c1

    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->s()I

    move-result v1

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->s()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    goto :goto_11d

    .line 15
    :cond_c1
    sget v1, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v1, v2

    sput v1, Lcom/huawei/hms/push/o;->a:I

    .line 16
    sget v3, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v3, v2

    sput v3, Lcom/huawei/hms/push/o;->a:I

    .line 17
    sget v4, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v4, v2

    sput v4, Lcom/huawei/hms/push/o;->a:I

    .line 18
    sget v5, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v5, v2

    sput v5, Lcom/huawei/hms/push/o;->a:I

    goto :goto_11d

    .line 19
    :cond_d6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 20
    sget v3, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v3, v2

    sput v3, Lcom/huawei/hms/push/o;->a:I

    .line 21
    sget v4, Lcom/huawei/hms/push/o;->a:I

    add-int/2addr v4, v2

    sput v4, Lcom/huawei/hms/push/o;->a:I

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 23
    :goto_11d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",openNotifyId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",delNotifyId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",alarmNotifyId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PushSelfShowLog"

    invoke-static {v7, v6}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 24
    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    aput v3, v6, v2

    const/4 v2, 0x2

    aput v4, v6, v2

    .line 28
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->f()I

    move-result v2

    if-lez v2, :cond_15d

    goto :goto_15e

    :cond_15d
    move v5, v7

    :goto_15e
    const/4 v2, 0x3

    aput v5, v6, v2

    const/4 v3, 0x0

    .line 29
    invoke-static {}, Lcom/huawei/hms/push/q;->a()Z

    move-result v4

    if-eqz v4, :cond_16c

    .line 30
    invoke-static {p0, p1, v6}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/Notification;

    move-result-object v3

    :cond_16c
    const-string v4, "notification"

    .line 31
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    if-eqz v4, :cond_1a5

    if-eqz v3, :cond_1a5

    .line 32
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v5, v7, :cond_192

    const-string v5, "hms_push_channel"

    .line 33
    invoke-static {v5}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getStringId(Ljava/lang/String;)I

    move-result v5

    .line 34
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 35
    new-instance v7, Landroid/app/NotificationChannel;

    const-string v8, "HwPushChannelID"

    invoke-direct {v7, v8, v5, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 36
    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 37
    :cond_192
    invoke-virtual {v4, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 38
    invoke-static {p0, p1, v6}, Lcom/huawei/hms/push/o;->d(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)V

    .line 39
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->b()Ljava/lang/String;

    move-result-object p1

    const-string v2, "100"

    invoke-static {p0, v1, p1, v2}, Lcom/huawei/hms/push/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catchall {:try_start_9 .. :try_end_1a5} :catchall_1a7

    :cond_1a5
    monitor-exit v0

    return-void

    :catchall_1a7
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1aa
    :goto_1aa
    monitor-exit v0

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V
    .registers 3

    .line 82
    invoke-static {p0, p1}, Lcom/huawei/hms/push/l;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 83
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_9
    return-void
.end method

.method public static a(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V
    .registers 4

    .line 86
    invoke-virtual {p0}, Lcom/huawei/hms/push/k;->e()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 87
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/PendingIntent;
    .registers 6

    const-string v0, "2"

    const/high16 v1, 0x10000000

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;[ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x2

    const/16 v2, 0x17

    if-lt v0, v2, :cond_18

    .line 3
    aget p2, p2, v1

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 4
    :cond_18
    aget p2, p2, v1

    const/high16 v0, 0x8000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/app/Notification$Builder;Lcom/huawei/hms/push/k;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.huawei.android.pushagent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    .line 6
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->k()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "hw_origin_sender_package_name"

    .line 9
    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    :cond_23
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V
    .registers 4

    .line 14
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->u()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1d

    .line 17
    :cond_19
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->u()Ljava/lang/String;

    move-result-object p0

    .line 18
    :goto_1d
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->j()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 20
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static b(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V
    .registers 3

    .line 11
    invoke-virtual {p0}, Lcom/huawei/hms/push/k;->t()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 13
    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_d
    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)Landroid/app/PendingIntent;
    .registers 6

    const-string v0, "1"

    const/high16 v1, 0x10000000

    .line 1
    invoke-static {p0, p1, p2, v0, v1}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;[ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_18

    .line 3
    aget p2, p2, v1

    const/high16 v0, 0x4000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 4
    :cond_18
    aget p2, p2, v1

    const/high16 v0, 0x8000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/huawei/hms/push/k;Landroid/app/Notification$Builder;)V
    .registers 2

    .line 5
    invoke-virtual {p0}, Lcom/huawei/hms/push/k;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/huawei/hms/push/k;[I)V
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoClear time is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->f()I

    move-result v0

    if-gtz v0, :cond_21

    return-void

    :cond_21
    const/16 v0, 0x20

    const-string v1, "-1"

    .line 3
    invoke-static {p0, p1, p2, v1, v0}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Lcom/huawei/hms/push/k;[ILjava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/huawei/hms/push/k;->f()I

    move-result p1

    int-to-long v1, p1

    const/4 p1, 0x3

    aget p1, p2, p1

    invoke-static {p0, v0, v1, v2, p1}, Lcom/huawei/hms/push/o;->a(Landroid/content/Context;Landroid/content/Intent;JI)V

    return-void
.end method
