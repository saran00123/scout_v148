.class public Lcom/alibaba/sdk/android/push/AgooFirebaseMessagingService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "AgooFirebaseMessagingService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MPS:GcmRegister"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 20
    invoke-super {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onCreate()V

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MPS:GcmRegister"

    const-string v2, "AgooFirebaseMessagingService oncreate"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .registers 7

    const-string v0, "onMessageReceived"

    const-string v1, "MPS:GcmRegister"

    const/4 v2, 0x0

    .line 27
    :try_start_5
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4a

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v3, "payload"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageReceived payload msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 32
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/push/AgooFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->FCM:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v4, v4, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdMsgKeyword:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->onPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_43} :catch_44

    goto :goto_4a

    :catch_44
    move-exception p1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, p1, v2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_4a
    :goto_4a
    return-void
.end method
