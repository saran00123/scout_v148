.class public final Lcom/huawei/hms/support/api/push/PushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/api/push/PushReceiver$a;,
        Lcom/huawei/hms/support/api/push/PushReceiver$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/support/api/push/PushReceiver;->b(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "msgContent"

    .line 10
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a([B)Lorg/json/JSONObject;
    .registers 2

    .line 7
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/push/v;->a([B)Ljava/lang/String;

    move-result-object p0

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    :catch_a
    const-string p0, "PushReceiver"

    const-string v0, "JSONException:parse message body failed."

    .line 9
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Intent;)Lorg/json/JSONObject;
    .registers 5

    const-string v0, "msg_data"

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/huawei/hms/support/api/push/PushReceiver;->a([B)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/huawei/hms/support/api/push/PushReceiver;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "data"

    .line 9
    invoke-static {v0, v2, v1}, Lcom/huawei/hms/push/utils/JsonUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0}, Lcom/huawei/hms/support/api/push/PushReceiver;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 11
    invoke-static {v0, v3, v2}, Lcom/huawei/hms/push/s;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    return-object p0

    .line 12
    :cond_20
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_27

    return-object v1

    .line 13
    :cond_27
    :try_start_27
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    return-object v1
.end method

.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "psContent"

    .line 6
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "PushReceiver"

    const-string v1, "msg_data"

    .line 2
    :try_start_4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3
    invoke-static {}, Lcom/huawei/hms/push/u;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/support/api/push/PushReceiver$a;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/huawei/hms/support/api/push/PushReceiver$a;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hms/push/f;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_17} :catch_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1e

    goto :goto_29

    :cond_18
    const-string p1, "This push message dose not sent by hwpush."

    .line 4
    :try_start_1a
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    const-string p1, "handlePushMessageEvent execute task error"

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catch_24
    const-string p1, "handlePushMessageEvent execute task runtime exception."

    .line 6
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public final b(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "PushReceiver"

    const-string v1, "device_token"

    .line 1
    :try_start_4
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2
    invoke-static {}, Lcom/huawei/hms/push/u;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/support/api/push/PushReceiver$b;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/huawei/hms/support/api/push/PushReceiver$b;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/huawei/hms/push/f;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_17} :catch_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1e

    goto :goto_29

    :cond_18
    const-string p1, "This message dose not sent by hwpush."

    .line 3
    :try_start_1a
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    const-string p1, "handlePushTokenEvent execute task error"

    .line 4
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :catch_24
    const-string p1, "handlePushMessageEvent execute task runtime exception."

    .line 5
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-eqz p2, :cond_78

    if-nez p1, :cond_5

    goto :goto_78

    .line 1
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "push receive broadcast message, Intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PushReceiver"

    .line 3
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TestIntent"

    .line 4
    :try_start_2d
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_73

    .line 5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_41

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    :cond_41
    const-string v2, "com.huawei.android.push.intent.REGISTRATION"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/support/api/push/PushReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_72

    :cond_4d
    const-string v2, "com.huawei.android.push.intent.RECEIVE"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/support/api/push/PushReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_72

    .line 12
    :cond_59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "message can\'t be recognised:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void

    :catch_73
    const-string p1, "intent has some error"

    .line 13
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    :goto_78
    return-void
.end method
