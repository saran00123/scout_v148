.class final Lcom/alibaba/sdk/android/push/register/ReporterFactory$1;
.super Ljava/lang/Object;
.source "ReporterFactory.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getTokenRepoter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    if-eqz p1, :cond_53

    const/4 v0, 0x0

    .line 41
    :try_start_9
    invoke-static {p2, p3}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 42
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ThirdToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {p1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/android/agoo/control/AgooFactory;->getNotifyManager()Lorg/android/agoo/control/NotifManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p4, p2, p3, v1}, Lorg/android/agoo/control/NotifManager;->reportThirdPushToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_43} :catch_44

    goto :goto_53

    :catch_44
    move-exception p1

    .line 45
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    const-string p4, "agoo factory could not report third push token"

    invoke-static {p2, p4, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method
