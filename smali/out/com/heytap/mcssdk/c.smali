.class public Lcom/heytap/mcssdk/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V
    .registers 4

    if-nez p0, :cond_8

    const-string p0, "context is null , please check param of parseIntent()"

    invoke-static {p0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    return-void

    :cond_8
    if-nez p1, :cond_10

    const-string p0, "intent is null , please check param of parseIntent()"

    invoke-static {p0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    return-void

    :cond_10
    if-nez p2, :cond_18

    const-string p0, "callback is null , please check param of parseIntent()"

    invoke-static {p0}, Lcom/heytap/mcssdk/f/c;->e(Ljava/lang/String;)V

    return-void

    :cond_18
    new-instance v0, Lcom/heytap/mcssdk/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/heytap/mcssdk/c$1;-><init>(Landroid/content/Context;Landroid/content/Intent;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V

    invoke-static {v0}, Lcom/heytap/mcssdk/f/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method
