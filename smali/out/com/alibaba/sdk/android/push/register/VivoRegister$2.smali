.class final Lcom/alibaba/sdk/android/push/register/VivoRegister$2;
.super Ljava/lang/Object;
.source "VivoRegister.java"

# interfaces
.implements Lcom/vivo/push/IPushActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/push/register/VivoRegister;->register(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/alibaba/sdk/android/push/register/VivoRegister$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 7

    const/4 v0, 0x2

    .line 59
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "state"

    aput-object v2, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "MPS:vPush"

    const-string v4, "oPushRegister turnOnPush"

    invoke-static {v2, v4, v0}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1f

    if-ne p1, v3, :cond_1c

    goto :goto_1f

    :cond_1c
    const-string p1, ""

    goto :goto_3f

    .line 63
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/alibaba/sdk/android/push/register/VivoRegister$2;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/vivo/push/PushClient;->getInstance(Landroid/content/Context;)Lcom/vivo/push/PushClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/vivo/push/PushClient;->getRegId()Ljava/lang/String;

    move-result-object p1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceiveRegId regId:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :goto_3f
    iget-object v0, p0, Lcom/alibaba/sdk/android/push/register/VivoRegister$2;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->VIVO:Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;

    iget-object v1, v1, Lcom/alibaba/sdk/android/push/register/ThirdPushManager$ThirdPushReportKeyword;->thirdTokenKeyword:Ljava/lang/String;

    const-string v2, "2.9.0.1"

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/push/register/ThirdPushManager;->reportToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
