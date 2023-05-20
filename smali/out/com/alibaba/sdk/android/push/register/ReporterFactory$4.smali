.class final Lcom/alibaba/sdk/android/push/register/ReporterFactory$4;
.super Ljava/lang/Object;
.source "ReporterFactory.java"

# interfaces
.implements Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/ReporterFactory;->getPushReporter()Lcom/alibaba/sdk/android/push/register/ReporterFactory$IPushReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportPushClick(Landroid/content/Context;Lorg/android/agoo/common/MsgDO;)V
    .registers 4

    .line 210
    invoke-static {p1}, Lorg/android/agoo/control/AgooFactory;->getInstance(Landroid/content/Context;)Lorg/android/agoo/control/AgooFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/android/agoo/control/AgooFactory;->getNotifyManager()Lorg/android/agoo/control/NotifManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/android/agoo/control/NotifManager;->report(Lorg/android/agoo/common/MsgDO;Lcom/taobao/accs/base/TaoBaseService$ExtraInfo;)V

    return-void
.end method
