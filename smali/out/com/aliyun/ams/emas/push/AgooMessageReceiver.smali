.class public abstract Lcom/aliyun/ams/emas/push/AgooMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"

# interfaces
.implements Lcom/aliyun/ams/emas/push/IAgooPushCallback;
.implements Lcom/aliyun/ams/emas/push/IAgooPushConfig;


# static fields
.field public static final EXTRA_MAP:Ljava/lang/String; = "extraMap"

.field public static final MESSAGE_ID:Ljava/lang/String; = "messageId"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field public static final NOTIFICATION_OPENED_ACTION:Ljava/lang/String; = "com.alibaba.push2.action.NOTIFICATION_OPENED"

.field public static final NOTIFICATION_OPEN_TYPE:Ljava/lang/String; = "notificationOpenType"

.field public static final NOTIFICATION_REMOVED_ACTION:Ljava/lang/String; = "com.alibaba.push2.action.NOTIFICATION_REMOVED"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TAG:Ljava/lang/String; = "MPS:AgooMessageReceiver"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgooMessageReceiver onReceive begin...intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "MPS:AgooMessageReceiver"

    invoke-static {v3, v0, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    return-void

    :cond_24
    :try_start_24
    const-string v2, "com.alibaba.sdk.android.push.RECEIVE"

    .line 43
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 44
    invoke-static {p1, p2, p0, p0}, Lcom/aliyun/ams/emas/push/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V

    goto/16 :goto_a0

    :cond_31
    const-string v2, "com.alibaba.push2.action.NOTIFICATION_OPENED"

    .line 45
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 46
    invoke-static {p1, p2, p0}, Lcom/aliyun/ams/emas/push/b;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V

    goto :goto_a0

    :cond_3d
    const-string v2, "com.alibaba.push2.action.NOTIFICATION_REMOVED"

    .line 47
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 48
    invoke-static {p1, p2, p0}, Lcom/aliyun/ams/emas/push/b;->b(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V

    goto :goto_a0

    :cond_49
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 49
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 51
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.PACKAGE_ADDED"

    .line 52
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    .line 53
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.USER_PRESENT"

    .line 54
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 55
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_81

    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 56
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 58
    :cond_81
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "USER ACTION: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, p2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_97} :catch_98

    goto :goto_a0

    :catch_98
    move-exception p1

    .line 62
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "handle action error:"

    invoke-static {v3, v0, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a0
    :goto_a0
    return-void
.end method
