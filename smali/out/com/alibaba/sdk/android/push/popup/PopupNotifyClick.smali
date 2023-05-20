.class public Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;
.super Lcom/taobao/agoo/BaseNotifyClick;
.source "PopupNotifyClick.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PopupNotifyClick"


# instance fields
.field private listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Lcom/taobao/agoo/BaseNotifyClick;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    return-void
.end method


# virtual methods
.method public onMessage(Landroid/content/Intent;)V
    .registers 11

    const/4 v0, 0x0

    const-string v1, "PopupNotifyClick"

    if-nez p1, :cond_d

    .line 47
    new-array p1, v0, [Ljava/lang/Object;

    const-string v0, "intent null, return"

    invoke-static {v1, v0, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_d
    const-string v2, "body"

    .line 51
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive notification, body: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :try_start_2b
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {v2}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v2, "title"

    .line 57
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "content"

    .line 58
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "msg_id"

    .line 59
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    new-instance v5, Ljava/lang/Integer;

    const-string/jumbo v6, "type"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_5f} :catch_a5

    const/4 v6, 0x1

    const-string v7, "PopupNotifyClickListener is null"

    const-string v8, "_ALIYUN_NOTIFICATION_MSG_ID_"

    if-ne v6, v5, :cond_8a

    :try_start_66
    const-string v5, "ext"

    .line 63
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {v5}, Lcom/taobao/accs/utl/JsonUtility;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    .line 66
    invoke-interface {p1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    if-eqz v4, :cond_84

    .line 68
    iget-object v4, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    invoke-interface {v4, v2, v3, p1}, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;->onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_bc

    .line 70
    :cond_84
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, v7, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_bc

    :cond_8a
    const/4 p1, 0x2

    if-ne p1, v5, :cond_bc

    .line 73
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 74
    invoke-interface {p1, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v4, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    if-eqz v4, :cond_9f

    .line 76
    iget-object v4, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    invoke-interface {v4, v2, v3, p1}, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;->onSysNoticeOpened(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_bc

    .line 78
    :cond_9f
    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, v7, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a4
    .catch Lorg/json/JSONException; {:try_start_66 .. :try_end_a4} :catch_a5

    goto :goto_bc

    :catch_a5
    move-exception p1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse json error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_bc
    :goto_bc
    return-void
.end method

.method public onNotPushData(Landroid/content/Intent;)V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    instance-of v1, v0, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;

    if-eqz v1, :cond_b

    .line 34
    check-cast v0, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;->onNotPushData(Landroid/content/Intent;)V

    :cond_b
    return-void
.end method

.method public onParseFailed(Landroid/content/Intent;)V
    .registers 4

    .line 26
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/popup/PopupNotifyClick;->listener:Lcom/alibaba/sdk/android/push/popup/PopupNotifyClickListener;

    instance-of v1, v0, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;

    if-eqz v1, :cond_b

    .line 27
    check-cast v0, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/push/popup/OnPushParseFailedListener;->onParseFailed(Landroid/content/Intent;)V

    :cond_b
    return-void
.end method
