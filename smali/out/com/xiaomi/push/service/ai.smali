.class Lcom/xiaomi/push/service/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/push/service/bd$b$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/service/XMPushService;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/service/XMPushService;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/service/ai;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/service/bd$c;Lcom/xiaomi/push/service/bd$c;I)V
    .registers 4

    sget-object p1, Lcom/xiaomi/push/service/bd$c;->c:Lcom/xiaomi/push/service/bd$c;

    if-ne p2, p1, :cond_f

    iget-object p1, p0, Lcom/xiaomi/push/service/ai;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p1}, Lcom/xiaomi/push/service/v;->a(Lcom/xiaomi/push/service/XMPushService;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/ai;->a:Lcom/xiaomi/push/service/XMPushService;

    invoke-static {p1}, Lcom/xiaomi/push/service/v;->b(Lcom/xiaomi/push/service/XMPushService;)V

    goto :goto_22

    :cond_f
    sget-object p1, Lcom/xiaomi/push/service/bd$c;->a:Lcom/xiaomi/push/service/bd$c;

    if-ne p2, p1, :cond_22

    const-string p1, "onChange unbind"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/push/service/ai;->a:Lcom/xiaomi/push/service/XMPushService;

    const p2, 0x42c1d81

    const-string p3, " the push is not connected."

    invoke-static {p1, p2, p3}, Lcom/xiaomi/push/service/v;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_22
    :goto_22
    return-void
.end method
