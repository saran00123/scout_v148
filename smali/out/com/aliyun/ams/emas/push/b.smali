.class Lcom/aliyun/ams/emas/push/b;
.super Ljava/lang/Object;
.source "Taobao"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V
    .registers 13

    const-string v0, "AgooPushHandler"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "messageId"

    .line 211
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    .line 212
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v3, "summary"

    .line 213
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "extraMap"

    .line 214
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v3, "notificationOpenType"

    const/4 v4, 0x1

    .line 215
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification opened "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, p2

    move-object v5, p0

    .line 217
    invoke-interface/range {v4 .. v9}, Lcom/aliyun/ams/emas/push/IAgooPushCallback;->onNotificationOpened(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    .line 219
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Handle notification open action failed."

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_48
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "message_source"

    const-string v2, "extData"

    const-string/jumbo v3, "task_id"

    const-string v4, "AgooPushHandler"

    const/4 v5, 0x0

    :try_start_c
    const-string v6, "id"

    .line 50
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v0, "handle message Null messageId!"

    .line 52
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_20
    const-string v6, "body"

    .line 56
    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 57
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "handle message json body is Empty!"

    .line 62
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_3f} :catch_fc

    return-void

    :cond_40
    const/4 v11, 0x0

    .line 69
    :try_start_41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-static {v0}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_41 .. :try_end_4a} :catch_4c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_4a} :catch_fc

    move-object v11, v0

    goto :goto_54

    :catch_4c
    move-exception v0

    :try_start_4d
    const-string v12, "Parse json error:"

    .line 72
    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v4, v12, v0, v13}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_54} :catch_fc

    :goto_54
    :try_start_54
    const-string/jumbo v0, "type"

    .line 77
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_61} :catch_f3

    .line 83
    :try_start_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[AMS]handle message, messageId:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", type:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", msg receive:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v6}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 89
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[AMS] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " --> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v13, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v13}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8f

    :cond_c6
    const-string v0, "msg_id"

    .line 92
    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    invoke-interface {v11, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v11, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-interface {v11, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_ALIYUN_NOTIFICATION_MSG_ID_"

    .line 99
    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-static {}, Lcom/aliyun/ams/emas/push/h;->b()Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "[AMS]Push received in DoNotDisturb time window, ignored."

    .line 102
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_ea
    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 106
    invoke-static/range {v7 .. v12}, Lcom/aliyun/ams/emas/push/b;->a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Lcom/aliyun/ams/emas/push/IAgooPushCallback;Ljava/lang/String;Ljava/util/Map;I)V

    goto :goto_104

    :catch_f3
    move-exception v0

    const-string v1, "Wrong message Type Define!"

    .line 79
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v1, v0, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_fb
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_fb} :catch_fc

    return-void

    :catch_fc
    move-exception v0

    .line 108
    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "onHandleCallException"

    invoke-static {v4, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_104
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Lcom/aliyun/ams/emas/push/IAgooPushCallback;Ljava/lang/String;Ljava/util/Map;I)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aliyun/ams/emas/push/IAgooPushConfig;",
            "Lcom/aliyun/ams/emas/push/IAgooPushCallback;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object v2, p0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 149
    new-instance v6, Lcom/aliyun/ams/emas/push/notification/f;

    invoke-direct {v6}, Lcom/aliyun/ams/emas/push/notification/f;-><init>()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v10, "AgooPushHandler"

    if-eq v5, v7, :cond_7b

    const/4 v0, 0x2

    if-eq v5, v0, :cond_1e

    .line 197
    new-array v0, v9, [Ljava/lang/Object;

    const-string v1, "Wrong message Type Define!"

    invoke-static {v10, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e0

    .line 178
    :cond_1e
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 180
    :try_start_22
    invoke-virtual {v6, p4, v8, p3}, Lcom/aliyun/ams/emas/push/notification/f;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    move-result-object v3

    if-eqz v3, :cond_e0

    .line 182
    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v5}, Lcom/aliyun/ams/emas/push/h;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_2f} :catch_72

    .line 184
    :try_start_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getMessageId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";messageType=msg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v0, v9

    .line 186
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    .line 184
    invoke-static {v10, v4, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_63} :catch_64

    goto :goto_6d

    :catch_64
    move-exception v0

    :try_start_65
    const-string/jumbo v4, "ut log error"

    .line 188
    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v10, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 190
    :goto_6d
    invoke-interface {p2, p0, v3}, Lcom/aliyun/ams/emas/push/IAgooPushCallback;->onMessageArrived(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/CPushMessage;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_70} :catch_72

    goto/16 :goto_e0

    :catch_72
    move-exception v0

    .line 193
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Custom message parse error:"

    invoke-static {v10, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_e0

    .line 153
    :cond_7b
    :try_start_7b
    invoke-static {p0}, Lorg/android/agoo/common/Config;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 154
    invoke-virtual {v6, p4, v7, p3}, Lcom/aliyun/ams/emas/push/notification/f;->b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/c;

    move-result-object v3

    if-eqz v3, :cond_c1

    .line 156
    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v5}, Lcom/aliyun/ams/emas/push/h;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 157
    invoke-interface {p1, p0, p4}, Lcom/aliyun/ams/emas/push/IAgooPushConfig;->showNotificationNow(Landroid/content/Context;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 158
    new-instance v5, Lcom/aliyun/ams/emas/push/e;

    invoke-direct {v5, v6, p0, v3, p2}, Lcom/aliyun/ams/emas/push/e;-><init>(Lcom/aliyun/ams/emas/push/notification/f;Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V

    invoke-static {p0, p1, p4, v5}, Lcom/aliyun/ams/emas/push/b;->a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Ljava/util/Map;Lcom/aliyun/ams/emas/push/g;)V

    goto :goto_e0

    :cond_9b
    const-string v0, "do not build notification as user request"

    .line 166
    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v10, v0, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->a()I

    move-result v6

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/aliyun/ams/emas/push/notification/c;->d()Ljava/lang/String;

    move-result-object v8

    move-object v1, p2

    move-object v2, p0

    move-object v3, v0

    invoke-interface/range {v1 .. v8}, Lcom/aliyun/ams/emas/push/IAgooPushCallback;->onNotificationReceivedWithoutShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_e0

    .line 170
    :cond_c1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notify title is null or server push data Error appId =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v10, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d7
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_d7} :catch_d8

    goto :goto_e0

    :catch_d8
    move-exception v0

    .line 173
    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Notify message error:"

    invoke-static {v10, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_e0
    :goto_e0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/IAgooPushConfig;Ljava/util/Map;Lcom/aliyun/ams/emas/push/g;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/aliyun/ams/emas/push/IAgooPushConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aliyun/ams/emas/push/g;",
            ")V"
        }
    .end annotation

    const-string v0, "image"

    .line 113
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "big_picture"

    .line 114
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 117
    invoke-interface {p1, p0, p2}, Lcom/aliyun/ams/emas/push/IAgooPushConfig;->customNotificationUI(Landroid/content/Context;Ljava/util/Map;)Landroid/app/Notification;

    move-result-object p0

    .line 118
    invoke-interface {p3, p0}, Lcom/aliyun/ams/emas/push/g;->a(Landroid/app/Notification;)V

    goto :goto_42

    :cond_24
    const/4 v0, 0x0

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_34

    .line 123
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_34
    move-object v6, v0

    .line 127
    new-instance v0, Lcom/aliyun/ams/emas/push/c;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/aliyun/ams/emas/push/c;-><init>(Lcom/aliyun/ams/emas/push/IAgooPushConfig;Landroid/content/Context;Ljava/util/Map;Landroid/os/Handler;Lcom/aliyun/ams/emas/push/g;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    :goto_42
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/content/Intent;Lcom/aliyun/ams/emas/push/IAgooPushCallback;)V
    .registers 13

    const-string v0, "AgooPushHandler"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "messageId"

    .line 232
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v2, "title"

    .line 233
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "summary"

    .line 234
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "extraMap"

    .line 235
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "notificationOpenType"

    const/4 v3, 0x1

    .line 236
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification deleted "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, p2

    move-object v4, p0

    .line 238
    invoke-interface/range {v3 .. v9}, Lcom/aliyun/ams/emas/push/IAgooPushCallback;->onNotificationRemoved(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    .line 240
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Handle notification delete action failed."

    invoke-static {v0, p2, p0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_48
    return-void
.end method
