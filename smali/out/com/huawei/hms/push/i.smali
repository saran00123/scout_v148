.class public Lcom/huawei/hms/push/i;
.super Ljava/lang/Object;
.source "SelfShow.java"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string v0, "PushSelfShowLog"

    if-eqz p0, :cond_44

    if-nez p1, :cond_7

    goto :goto_44

    .line 1
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_b} :catch_50
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_b} :catch_4a

    const-string v2, "com.huawei.intent.action.PUSH"

    .line 2
    :try_start_d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_50
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_4a

    if-nez v2, :cond_23

    const-string v2, "com.huawei.push.msg.NOTIFY_MSG"

    :try_start_15
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_19} :catch_50
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_4a

    if-nez v2, :cond_23

    const-string v2, "com.huawei.intent.action.PUSH_DELAY_NOTIFY"

    .line 3
    :try_start_1d
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_21} :catch_50
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_4a

    if-eqz v1, :cond_56

    :cond_23
    const-string v1, "selfshow_info"

    .line 4
    :try_start_25
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_29} :catch_50
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_29} :catch_4a

    const-string v2, "selfshow_token"

    .line 5
    :try_start_2b
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v1, :cond_3e

    if-eqz v2, :cond_3e

    .line 6
    array-length v3, v1

    if-eqz v3, :cond_3e

    array-length v3, v2

    if-nez v3, :cond_3a

    goto :goto_3e

    .line 7
    :cond_3a
    invoke-static {p0, p1, v1, v2}, Lcom/huawei/hms/push/i;->a(Landroid/content/Context;Landroid/content/Intent;[B[B)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_3d} :catch_50
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3d} :catch_4a

    goto :goto_56

    :cond_3e
    :goto_3e
    const-string p0, "self show info or token is null."

    .line 8
    :try_start_40
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_50
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_4a

    return-void

    :cond_44
    :goto_44
    const-string p0, "enter SelfShowReceiver receiver, context or intent is null"

    .line 9
    :try_start_46
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_49} :catch_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4a

    return-void

    :catch_4a
    const-string p0, "onReceive Exception."

    .line 10
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :catch_50
    move-exception p0

    const-string p1, "onReceive RuntimeException."

    .line 11
    invoke-static {v0, p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_56
    :goto_56
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hms/push/k;)V
    .registers 9

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive a selfshow message, the cmd type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/push/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 25
    :cond_25
    invoke-virtual {p2}, Lcom/huawei/hms/push/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/push/q;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_3c

    .line 26
    new-instance p1, Lcom/huawei/hms/push/p;

    invoke-direct {p1, p0, p2}, Lcom/huawei/hms/push/p;-><init>(Landroid/content/Context;Lcom/huawei/hms/push/k;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_4b

    :cond_3c
    const-string p2, "waiting..."

    .line 27
    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-static {p0, p1, v2, v3}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;Landroid/content/Intent;J)V

    :goto_4b
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/huawei/hms/push/k;I)V
    .registers 7

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive a selfshow user handle message eventId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushSelfShowLog"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "-1"

    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 32
    invoke-static {p0, p1}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_25

    .line 33
    :cond_22
    invoke-static {p0, p4}, Lcom/huawei/hms/push/q;->a(Landroid/content/Context;I)V

    :goto_25
    const-string p1, "1"

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 35
    new-instance p1, Lcom/huawei/hms/push/j;

    invoke-direct {p1, p0, p3}, Lcom/huawei/hms/push/j;-><init>(Landroid/content/Context;Lcom/huawei/hms/push/k;)V

    invoke-virtual {p1}, Lcom/huawei/hms/push/j;->c()V

    .line 36
    invoke-virtual {p3}, Lcom/huawei/hms/push/k;->p()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/huawei/hms/push/k;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/huawei/hms/push/utils/PluginUtil;->onNotificationClicked(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_41
    const-string p1, "2"

    .line 37
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 38
    invoke-virtual {p3}, Lcom/huawei/hms/push/k;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/huawei/hms/push/k;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3, p1}, Lcom/huawei/hms/push/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_55
    const-string p0, "other event"

    .line 39
    invoke-static {v1, p0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;[B[B)V
    .registers 8

    const-string v0, "selfshow_event_id"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "selfshow_notify_id"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get notifyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PushSelfShowLog"

    invoke-static {v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v2, Lcom/huawei/hms/push/k;

    invoke-direct {v2, p2, p3}, Lcom/huawei/hms/push/k;-><init>([B[B)V

    .line 16
    invoke-virtual {v2}, Lcom/huawei/hms/push/k;->z()Z

    move-result p2

    if-nez p2, :cond_34

    const-string p0, "parseMessage failed"

    .line 17
    invoke-static {v3, p0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onReceive the msg id = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2}, Lcom/huawei/hms/push/k;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",and cmd is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/huawei/hms/push/k;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",and the eventId is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-static {v3, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_66

    .line 21
    invoke-static {p0, p1, v2}, Lcom/huawei/hms/push/i;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hms/push/k;)V

    goto :goto_69

    .line 22
    :cond_66
    invoke-static {p0, p1, v0, v2, v1}, Lcom/huawei/hms/push/i;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/huawei/hms/push/k;I)V

    :goto_69
    return-void
.end method
