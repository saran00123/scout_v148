.class public Lcom/heytap/msp/push/HeytapPushManager;
.super Ljava/lang/Object;


# static fields
.field public static final EVENT_ID_APP_BLACK_LIST:Ljava/lang/String; = "app_black_list"

.field public static final EVENT_ID_PUSH_ADD_MESSAGE_NO_DISTURBING:Ljava/lang/String; = "add_message_no_disturbing"

.field public static final EVENT_ID_PUSH_ADD_MESSAGE_TOP:Ljava/lang/String; = "add_message_top"

.field public static final EVENT_ID_PUSH_CLICK:Ljava/lang/String; = "push_click"

.field public static final EVENT_ID_PUSH_DELETE:Ljava/lang/String; = "push_delete"

.field public static final EVENT_ID_PUSH_EXCEPTION:Ljava/lang/String; = "push_exception"

.field public static final EVENT_ID_PUSH_MESSAGE_REPEAT:Ljava/lang/String; = "message_repeat"

.field public static final EVENT_ID_PUSH_NO_IMSI:Ljava/lang/String; = "imsi_not_exist"

.field public static final EVENT_ID_PUSH_NO_SHOW:Ljava/lang/String; = "push_no_show"

.field public static final EVENT_ID_PUSH_REVOKE:Ljava/lang/String; = "push_revoke"

.field public static final EVENT_ID_PUSH_REVOKE_DELETE:Ljava/lang/String; = "push_revoke_delete"

.field public static final EVENT_ID_PUSH_SHOW:Ljava/lang/String; = "push_show"

.field public static final EVENT_ID_READ_MESSAGE:Ljava/lang/String; = "push_read_message"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotificationType()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->clearNotificationType(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static clearNotificationType(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static clearNotifications()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->clearNotifications(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static clearNotifications(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->d(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getMcsPackageName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationStatus()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->getNotificationStatus(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getNotificationStatus(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->c(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getPushCallback()Lcom/heytap/msp/push/callback/ICallBackResultService;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->q()Lcom/heytap/msp/push/callback/ICallBackResultService;

    move-result-object v0

    return-object v0
.end method

.method public static getPushStatus()V
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->r()V

    return-void
.end method

.method public static getPushVersionCode()I
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->u()I

    move-result v0

    return v0
.end method

.method public static getPushVersionName()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReceiveSdkAction()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegister()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->getRegister(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getRegister(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static getRegisterID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Z)Lcom/heytap/mcssdk/d;

    return-void
.end method

.method public static isSupportPush()Z
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->n()Z

    move-result v0

    return v0
.end method

.method public static openNotificationSettings()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->openNotificationSettings(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static openNotificationSettings(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->f(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static pausePush()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->pausePush(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static pausePush(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->g(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/heytap/msp/push/HeytapPushManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 11

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method

.method public static requestNotificationPermission()V
    .registers 1

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/mcssdk/d;->j()V

    return-void
.end method

.method public static resumePush()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->resumePush(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static resumePush(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->h(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static setAppKeySecret(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/mcssdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setNotificationType(I)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/heytap/msp/push/HeytapPushManager;->setNotificationType(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static setNotificationType(ILorg/json/JSONObject;)V
    .registers 3

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/mcssdk/d;->a(ILorg/json/JSONObject;)V

    return-void
.end method

.method public static setPushCallback(Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->a(Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method

.method public static setPushTime(Ljava/util/List;IIII)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/heytap/msp/push/HeytapPushManager;->setPushTime(Ljava/util/List;IIIILorg/json/JSONObject;)V

    return-void
.end method

.method public static setPushTime(Ljava/util/List;IIIILorg/json/JSONObject;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IIII",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/heytap/mcssdk/d;->a(Ljava/util/List;IIIILorg/json/JSONObject;)V

    return-void
.end method

.method public static setRegisterID(Ljava/lang/String;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static statisticMessage(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/MessageStat;)V

    return-void
.end method

.method public static statisticMessage(Landroid/content/Context;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/heytap/msp/push/mode/MessageStat;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/heytap/mcssdk/d;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public static unRegister()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/heytap/msp/push/HeytapPushManager;->unRegister(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static unRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V
    .registers 11

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/heytap/mcssdk/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/heytap/msp/push/callback/ICallBackResultService;)V

    return-void
.end method

.method public static unRegister(Lorg/json/JSONObject;)V
    .registers 2

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/mcssdk/d;->b(Lorg/json/JSONObject;)V

    return-void
.end method
