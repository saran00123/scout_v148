.class Lanet/channel/a;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lanet/channel/AccsSessionManager;


# direct methods
.method constructor <init>(Lanet/channel/AccsSessionManager;Landroid/content/Intent;)V
    .registers 3

    .line 115
    iput-object p1, p0, Lanet/channel/a;->b:Lanet/channel/AccsSessionManager;

    iput-object p2, p0, Lanet/channel/a;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 118
    invoke-static {}, Lanet/channel/AccsSessionManager;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/ISessionListener;

    .line 120
    :try_start_14
    iget-object v2, p0, Lanet/channel/a;->a:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lanet/channel/ISessionListener;->onConnectionChanged(Landroid/content/Intent;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_8

    :catch_1a
    move-exception v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 122
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "awcn.AccsSessionManager"

    const-string v5, "notifyListener exception."

    invoke-static {v4, v5, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_27
    return-void
.end method
