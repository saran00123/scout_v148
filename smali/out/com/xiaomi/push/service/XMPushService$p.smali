.class Lcom/xiaomi/push/service/XMPushService$p;
.super Lcom/xiaomi/push/service/XMPushService$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/XMPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "p"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;

.field a:Z


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/service/XMPushService;Z)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Lcom/xiaomi/push/service/XMPushService;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/XMPushService$j;-><init>(I)V

    iput-boolean p2, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Z

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, "send ping.."

    return-object v0
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-virtual {v0}, Lcom/xiaomi/push/service/XMPushService;->c()Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_8
    iget-boolean v0, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Z

    if-nez v0, :cond_f

    invoke-static {}, Lcom/xiaomi/push/fw;->a()V

    :cond_f
    iget-object v0, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {v0}, Lcom/xiaomi/push/service/XMPushService;->a(Lcom/xiaomi/push/service/XMPushService;)Lcom/xiaomi/push/gj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/push/gj;->b(Z)V
    :try_end_1a
    .catch Lcom/xiaomi/push/gu; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/xiaomi/push/service/XMPushService$p;->a:Lcom/xiaomi/push/service/XMPushService;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/service/XMPushService;->a(ILjava/lang/Exception;)V

    :cond_26
    :goto_26
    return-void
.end method
