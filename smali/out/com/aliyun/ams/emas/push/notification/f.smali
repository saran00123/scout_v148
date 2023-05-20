.class public Lcom/aliyun/ams/emas/push/notification/f;
.super Ljava/lang/Object;
.source "Taobao"


# static fields
.field public static final APP_ID:Ljava/lang/String; = "appId"

.field public static final EXTRA_MAP:Ljava/lang/String; = "extraMap"

.field public static final EXT_DATA:Ljava/lang/String; = "extData"

.field public static final MSG_ID:Ljava/lang/String; = "msgId"

.field public static final NOTIFICATION_ID:Ljava/lang/String; = "notificationId"

.field public static final NOTIFICATION_OPEN_TYPE:Ljava/lang/String; = "notificationOpenType"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final TAG:Ljava/lang/String; = "MPS:MessageNotification"

.field public static final TASK_ID:Ljava/lang/String; = "task_id"

.field public static final TITLE:Ljava/lang/String; = "title"


# instance fields
.field private a:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;I)Landroid/app/PendingIntent;
    .registers 8

    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    sget-object v1, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_type"

    const-string v2, "notification_delete"

    .line 242
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "task_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extData"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msgId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->a()I

    move-result v1

    const-string v2, "notificationOpenType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->i()I

    move-result v1

    const-string v2, "notificationId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_78

    .line 252
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 253
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extraMap"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete content messageId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MPS:MessageNotification"

    invoke-static {v3, v1, v2}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->g()Ljava/lang/String;

    move-result-object p2

    const-string v1, "appId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_ab

    const/high16 p2, 0xc000000

    .line 260
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_ab
    const/high16 p2, 0x8000000

    .line 262
    invoke-static {p1, p3, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 10

    .line 271
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_22

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v1, v2, :cond_14

    goto :goto_22

    .line 275
    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/aliyun/ams/emas/push/MsgService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    .line 273
    :cond_22
    :goto_22
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/aliyun/ams/emas/push/NotificationActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    :goto_2f
    sget-object v1, Lcom/aliyun/ams/emas/push/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "action_type"

    const-string v3, "notification_open"

    .line 278
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->k()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "task_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->l()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extData"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "summary"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "msgId"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->g()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->a()I

    move-result v1

    const-string v4, "notificationOpenType"

    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->i()I

    move-result v1

    const-string v4, "notificationId"

    invoke-virtual {p3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_a5

    .line 293
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->e()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 294
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "extraMap"

    invoke-virtual {p3, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    :cond_a5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "build content messageId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "MPS:MessageNotification"

    invoke-static {v3, p2, v1}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "realIntent"

    .line 299
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 301
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 p3, 0xc000000

    if-gt p2, v2, :cond_e8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le p2, v2, :cond_d6

    goto :goto_e8

    .line 304
    :cond_d6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt p2, v1, :cond_e1

    .line 305
    invoke-static {p1, p4, v0, p3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_e1
    const/high16 p2, 0x8000000

    .line 307
    invoke-static {p1, p4, v0, p2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 302
    :cond_e8
    :goto_e8
    invoke-static {p1, p4, v0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/CPushMessage;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aliyun/ams/emas/push/notification/CPushMessage;"
        }
    .end annotation

    const-string/jumbo v0, "title"

    .line 55
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "content"

    .line 56
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "extData"

    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_3b

    .line 62
    :cond_26
    new-instance p1, Lcom/aliyun/ams/emas/push/notification/CPushMessage;

    invoke-direct {p1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;-><init>()V

    .line 63
    invoke-virtual {p1, p3}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setMessageId(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, p2}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setAppId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v0}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setTitle(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v1}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setContent(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v2}, Lcom/aliyun/ams/emas/push/notification/CPushMessage;->setTraceInfo(Ljava/lang/String;)V

    return-object p1

    .line 59
    :cond_3b
    :goto_3b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Message title or content is empty:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "MPS:MessageNotification"

    invoke-static {p3, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/app/Notification;Lcom/aliyun/ams/emas/push/notification/c;)V
    .registers 13

    const-string v0, "MPS:MessageNotification"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "notification"

    .line 151
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/aliyun/ams/emas/push/notification/f;->a:Landroid/app/NotificationManager;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_d} :catch_14f

    const-string v2, ""

    if-nez p2, :cond_44

    .line 153
    :try_start_11
    new-instance p2, Lcom/aliyun/ams/emas/push/notification/a;

    invoke-direct {p2}, Lcom/aliyun/ams/emas/push/notification/a;-><init>()V

    .line 155
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/aliyun/ams/emas/push/notification/d;->a(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/aliyun/ams/emas/push/notification/d;->b(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->j()I

    move-result v3

    invoke-virtual {p2, v3}, Lcom/aliyun/ams/emas/push/notification/d;->a(I)V

    .line 158
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/aliyun/ams/emas/push/notification/d;->c(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2, p1}, Lcom/aliyun/ams/emas/push/notification/d;->a(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p2

    if-nez p2, :cond_44

    .line 164
    new-instance p2, Landroid/app/Notification;

    const v3, 0x1080077

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p2, v3, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 168
    :cond_44
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "appId"

    .line 169
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "msgId"

    .line 170
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "task_id"

    .line 171
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extData"

    .line 172
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "message_source"

    .line 173
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    .line 174
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_7c} :catch_14f

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 178
    :try_start_7e
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->a()I

    move-result v6

    if-eq v6, v5, :cond_bb

    if-eq v6, v4, :cond_a4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_90

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8d

    goto :goto_c9

    :cond_8d
    const-string v2, "no action"

    goto :goto_c9

    :cond_90
    const-string/jumbo v2, "url"

    const-string v6, "android.intent.action.VIEW"

    .line 195
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_c9

    :cond_a4
    const-string v2, "activity"
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_a6} :catch_e0

    .line 183
    :try_start_a6
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->h()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 184
    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_b1} :catch_b2

    goto :goto_c9

    :catch_b2
    move-exception v6

    :try_start_b3
    const-string v7, "can\'t find certain activity class: "

    .line 186
    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0, v7, v6, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_c9

    :cond_bb
    const-string v2, "app"

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 202
    :goto_c9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "open type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_b3 .. :try_end_df} :catch_e0

    goto :goto_e8

    :catch_e0
    move-exception v2

    :try_start_e1
    const-string v6, "openType excption"

    .line 205
    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v0, v6, v2, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 209
    :goto_e8
    invoke-static {}, Lcom/aliyun/ams/emas/push/h;->d()I

    move-result v2

    invoke-direct {p0, p1, p3, v3, v2}, Lcom/aliyun/ams/emas/push/notification/f;->a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 210
    iput-object v2, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 213
    invoke-static {}, Lcom/aliyun/ams/emas/push/h;->d()I

    move-result v2

    invoke-direct {p0, p1, p3, v2}, Lcom/aliyun/ams/emas/push/notification/f;->a(Landroid/content/Context;Lcom/aliyun/ams/emas/push/notification/c;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 214
    iput-object p1, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_e1 .. :try_end_fc} :catch_14f

    .line 217
    :try_start_fc
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";appId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";messageType=notify"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 219
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 217
    invoke-static {v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_fc .. :try_end_130} :catch_131

    goto :goto_13a

    :catch_131
    move-exception p1

    :try_start_132
    const-string/jumbo v2, "ut log error"

    .line 221
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p1, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 224
    :goto_13a
    invoke-static {}, Lcom/aliyun/ams/emas/push/a/a;->a()Lcom/aliyun/ams/emas/push/a/a;

    move-result-object p1

    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->i()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/aliyun/ams/emas/push/a/a;->a(I)V

    .line 225
    iget-object p1, p0, Lcom/aliyun/ams/emas/push/notification/f;->a:Landroid/app/NotificationManager;

    invoke-virtual {p3}, Lcom/aliyun/ams/emas/push/notification/c;->i()I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_14e
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_14e} :catch_14f

    goto :goto_157

    :catch_14f
    move-exception p1

    .line 228
    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "onNotification"

    invoke-static {v0, p3, p1, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_157
    return-void
.end method

.method public b(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/ams/emas/push/notification/c;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/aliyun/ams/emas/push/notification/c;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "_ALIYUN_NOTIFICATION_MSG_ID_"

    const-string v2, "_ALIYUN_NOTIFICATION_PRIORITY_"

    const-string/jumbo v3, "title"

    .line 72
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "content"

    .line 73
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "MPS:MessageNotification"

    if-nez v5, :cond_126

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27

    goto/16 :goto_126

    .line 79
    :cond_27
    new-instance v5, Lcom/aliyun/ams/emas/push/notification/c;

    invoke-direct {v5}, Lcom/aliyun/ams/emas/push/notification/c;-><init>()V

    const-string v9, "open"

    .line 81
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 82
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3f

    const/4 v9, 0x1

    .line 83
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :cond_3f
    const-string/jumbo v10, "url"

    .line 85
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "activity"

    .line 86
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "ext"

    .line 87
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v13, "task_id"

    .line 88
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "extData"

    .line 89
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "notification_channel"

    .line 90
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const-string v7, "notify_id"

    .line 91
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 93
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_84

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_88

    .line 96
    :cond_84
    invoke-static {}, Lcom/aliyun/ams/emas/push/h;->c()I

    move-result v7

    :goto_88
    move v8, v7

    move-object/from16 v7, p2

    .line 100
    invoke-virtual {v5, v7}, Lcom/aliyun/ams/emas/push/notification/c;->e(Ljava/lang/String;)V

    move-object/from16 v7, p3

    .line 102
    invoke-virtual {v5, v7}, Lcom/aliyun/ams/emas/push/notification/c;->d(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v5, v13}, Lcom/aliyun/ams/emas/push/notification/c;->h(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5, v14}, Lcom/aliyun/ams/emas/push/notification/c;->i(Ljava/lang/String;)V

    const-string v7, "message_source"

    .line 105
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/aliyun/ams/emas/push/notification/c;->k(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v5, v3}, Lcom/aliyun/ams/emas/push/notification/c;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v5, v4}, Lcom/aliyun/ams/emas/push/notification/c;->b(Ljava/lang/String;)V

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/aliyun/ams/emas/push/notification/c;->a(I)V

    .line 110
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b8

    const/4 v10, 0x0

    :cond_b8
    invoke-virtual {v5, v10}, Lcom/aliyun/ams/emas/push/notification/c;->c(Ljava/lang/String;)V

    .line 111
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c2

    const/4 v11, 0x0

    :cond_c2
    invoke-virtual {v5, v11}, Lcom/aliyun/ams/emas/push/notification/c;->f(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v5, v8}, Lcom/aliyun/ams/emas/push/notification/c;->b(I)V

    .line 113
    invoke-virtual {v5, v15}, Lcom/aliyun/ams/emas/push/notification/c;->j(Ljava/lang/String;)V

    .line 115
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_125

    .line 117
    :try_start_d1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {v3}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    const-string v4, "_ALIYUN_NOTIFICATION_ID_"

    .line 120
    invoke-virtual {v5}, Lcom/aliyun/ams/emas/push/notification/c;->i()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 124
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 125
    invoke-virtual {v5, v2}, Lcom/aliyun/ams/emas/push/notification/c;->g(Ljava/lang/String;)V

    goto :goto_10e

    .line 127
    :cond_f7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f9
    .catch Lorg/json/JSONException; {:try_start_d1 .. :try_end_f9} :catch_11c

    const/16 v4, 0x10

    if-lt v2, v4, :cond_106

    const/4 v2, 0x0

    .line 128
    :try_start_fe
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/aliyun/ams/emas/push/notification/c;->g(Ljava/lang/String;)V

    goto :goto_10e

    :cond_106
    const/4 v2, 0x0

    .line 130
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4
    :try_end_10b
    .catch Lorg/json/JSONException; {:try_start_fe .. :try_end_10b} :catch_119

    :try_start_10b
    invoke-virtual {v5, v4}, Lcom/aliyun/ams/emas/push/notification/c;->g(Ljava/lang/String;)V

    .line 135
    :goto_10e
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v5, v3}, Lcom/aliyun/ams/emas/push/notification/c;->a(Ljava/util/Map;)V
    :try_end_118
    .catch Lorg/json/JSONException; {:try_start_10b .. :try_end_118} :catch_11c

    goto :goto_125

    :catch_119
    move-exception v0

    move v1, v2

    goto :goto_11e

    :catch_11c
    move-exception v0

    const/4 v1, 0x0

    .line 139
    :goto_11e
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Parse inner json(ext) error:"

    invoke-static {v6, v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_125
    :goto_125
    return-object v5

    .line 75
    :cond_126
    :goto_126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "title or content of notify is empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method
