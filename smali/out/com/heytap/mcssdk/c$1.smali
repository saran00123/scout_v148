.class final Lcom/heytap/mcssdk/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/heytap/mcssdk/c;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V
    .registers 4

    iput-object p1, p0, Lcom/heytap/mcssdk/c$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/heytap/mcssdk/c$1;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/heytap/mcssdk/c$1;->c:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/heytap/mcssdk/c$1;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/heytap/mcssdk/c$1;->b:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/heytap/mcssdk/d/c;->a(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/heytap/msp/push/mode/BaseMode;

    if-eqz v1, :cond_f

    invoke-static {}, Lcom/heytap/mcssdk/d;->k()Lcom/heytap/mcssdk/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/heytap/mcssdk/d;->p()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_29
    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/heytap/mcssdk/e/c;

    if-eqz v3, :cond_29

    iget-object v4, p0, Lcom/heytap/mcssdk/c$1;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/heytap/mcssdk/c$1;->c:Lcom/heytap/msp/push/callback/IDataMessageCallBackService;

    invoke-interface {v3, v4, v1, v5}, Lcom/heytap/mcssdk/e/c;->a(Landroid/content/Context;Lcom/heytap/msp/push/mode/BaseMode;Lcom/heytap/msp/push/callback/IDataMessageCallBackService;)V

    goto :goto_29

    :cond_3f
    return-void
.end method
