.class final Lcom/alibaba/sdk/android/push/register/ReporterFactory$2;
.super Ljava/lang/Object;
.source "ReporterFactory.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getMsgReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IMsgReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendMsgToDecryptor(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;)V
    .registers 5

    .line 92
    :try_start_0
    invoke-static {p1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object p1

    const/4 p4, 0x0

    check-cast p4, Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;

    invoke-virtual {p1, p3, p2, p4}, Lorg/android/agoo/control/AgooFactory;->msgRecevie([BLjava/lang/String;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_1b

    :catch_b
    move-exception p1

    .line 94
    invoke-static {}, Lcom/alibaba/sdk/android/push/register/ReporterFactory;->access$100()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    const-string p4, "agoo factory could not report msg"

    invoke-static {p2, p4, p3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1b
    return-void
.end method
