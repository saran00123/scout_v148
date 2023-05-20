.class final Lcom/alibaba/sdk/android/push/register/GcmRegister$1;
.super Ljava/lang/Object;
.source "GcmRegister.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/GcmRegister;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$sendId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    .line 26
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$sendId:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$applicationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "MPS:GcmRegister"

    const/4 v1, 0x0

    .line 30
    :try_start_3
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/GcmRegister;->access$000()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "registered already"

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_11
    const/4 v2, 0x1

    .line 34
    invoke-static {v2}, Lcom/alibaba/sdk/android/push/register/GcmRegister;->access$002(Z)Z

    .line 35
    new-instance v2, Lcom/google/firebase/FirebaseOptions$Builder;

    invoke-direct {v2}, Lcom/google/firebase/FirebaseOptions$Builder;-><init>()V

    .line 36
    iget-object v3, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$sendId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/FirebaseOptions$Builder;->setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 37
    iget-object v3, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/FirebaseOptions$Builder;->setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;

    .line 38
    invoke-virtual {v2}, Lcom/google/firebase/FirebaseOptions$Builder;->build()Lcom/google/firebase/FirebaseOptions;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_28} :catch_5e

    .line 41
    :try_start_28
    iget-object v3, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/firebase/FirebaseApp;->initializeApp(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;)Lcom/google/firebase/FirebaseApp;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_3a

    :catch_32
    move-exception v2

    :try_start_33
    const-string v3, "register initializeApp"

    .line 43
    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v4}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 45
    :goto_3a
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v2

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register token\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v3, p0, Lcom/alibaba/sdk/android/push/register/GcmRegister$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alibaba/sdk/android/push/AgooFirebaseInstanceIDService;->reportGcmToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_5d} :catch_5e

    goto :goto_66

    :catch_5e
    move-exception v2

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "register"

    invoke-static {v0, v3, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_66
    return-void
.end method
