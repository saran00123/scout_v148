.class public Lcom/taobao/accs/base/BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseReceiver"


# instance fields
.field private baseReceiver:Lcom/taobao/accs/base/IBaseReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/base/BaseReceiver;->baseReceiver:Lcom/taobao/accs/base/IBaseReceiver;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcom/taobao/accs/internal/ReceiverImpl;

    invoke-direct {v0}, Lcom/taobao/accs/internal/ReceiverImpl;-><init>()V

    iput-object v0, p0, Lcom/taobao/accs/base/BaseReceiver;->baseReceiver:Lcom/taobao/accs/base/IBaseReceiver;

    .line 27
    :cond_b
    iget-object v0, p0, Lcom/taobao/accs/base/BaseReceiver;->baseReceiver:Lcom/taobao/accs/base/IBaseReceiver;

    invoke-interface {v0, p1, p2}, Lcom/taobao/accs/base/IBaseReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_23

    :catch_11
    move-exception p1

    .line 29
    sget-object p2, Lcom/taobao/accs/base/BaseReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "build ReceiverImpl error"

    invoke-static {p2, p1, v0}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_23
    return-void
.end method
