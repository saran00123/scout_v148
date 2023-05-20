.class public Lcom/alibaba/sdk/android/push/register/ThirdPushManager;
.super Ljava/lang/Object;
.source "ThirdPushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.alibaba.sdk.android.push.register.ThirdPushManager"

.field private static agooFactory:Lorg/android/agoo/control/AgooFactory;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPushMsg(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_29

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_29

    .line 67
    :try_start_f
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getMsgReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;

    move-result-object v1

    const-string v2, "UTF-8"

    .line 68
    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v2, 0x0

    .line 67
    invoke-interface {v1, p0, p1, p2, v2}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;->sendMsgToDecryptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1d} :catch_1e

    goto :goto_32

    :catch_1e
    move-exception p0

    .line 70
    sget-object p1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v0, "onPushMsg"

    invoke-static {p1, v0, p0, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_32

    .line 73
    :cond_29
    sget-object p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Incorrect parameter"

    invoke-static {p0, p2, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_32
    return-void
.end method

.method public static registerImpl(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V
    .registers 3

    if-eqz p0, :cond_6

    .line 29
    invoke-static {p0}, Lcom/taobao/agoo/BaseNotifyClickActivity;->addNotifyListener(Lcom/taobao/agoo/BaseNotifyClickActivity$INotifyListener;)V

    goto :goto_10

    .line 31
    :cond_6
    sget-object p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "BaseNotifyClickActivity.INotifyListener cannot be empty."

    invoke-static {p0, v1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_10
    return-void
.end method

.method public static reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_64

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 42
    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ThirdToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :try_start_37
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getTokenRepoter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;

    move-result-object v1

    invoke-interface {v1, p0, p1, p3, p2}, Lcom/alibaba/sdk/android/push/register/ReporterFactory$ITokenReporter;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object p3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->XIAOMI:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object p3, p3, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 47
    new-instance p1, Landroid/content/Intent;

    const-string p3, "com.taobao.android.mipush.token"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "token"

    .line 48
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_58} :catch_59

    goto :goto_6d

    :catch_59
    move-exception p0

    .line 52
    sget-object p1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "reportToken"

    invoke-static {p1, p3, p0, p2}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_6d

    .line 55
    :cond_64
    sget-object p0, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->TAG:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "Incorrect parameter"

    invoke-static {p0, p2, p1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6d
    :goto_6d
    return-void
.end method
