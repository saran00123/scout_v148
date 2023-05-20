.class public Lcom/alibaba/sdk/android/push/AgooFirebaseInstanceIDService;
.super Lcom/google/firebase/iid/FirebaseInstanceIdService;
.source "AgooFirebaseInstanceIDService.java"


# static fields
.field public static final GCM_TOKEN:Ljava/lang/String; = "gcm"

.field public static final TAG:Ljava/lang/String; = "MPS:GcmRegister"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;-><init>()V

    return-void
.end method

.method public static reportGcmToken(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 38
    sget-object v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->FCM:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v0, v0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    const-string v1, "17.6.0"

    invoke-static {p0, v0, p1, v1}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 4

    .line 20
    invoke-super {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdService;->onCreate()V

    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MPS:GcmRegister"

    const-string v2, "Token\u6ce8\u518c\u670d\u52a1\u5df2\u7ecf\u5f00\u542f"

    invoke-static {v1, v2, v0}, Lcom/taobao/accs/utl/ALog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onTokenRefresh()V
    .registers 5

    .line 27
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTokenRefresh token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "MPS:GcmRegister"

    invoke-static {v3, v1, v2}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {p0, v0}, Lcom/alibaba/sdk/android/push/AgooFirebaseInstanceIDService;->reportGcmToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
