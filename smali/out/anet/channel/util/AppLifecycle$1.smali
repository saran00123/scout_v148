.class final Lanet/channel/util/AppLifecycle$1;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$foreground:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lanet/channel/util/AppLifecycle$1;->val$foreground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 72
    invoke-static {}, Lanet/channel/util/AppLifecycle;->access$000()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/util/AppLifecycle$AppLifecycleListener;

    .line 74
    :try_start_14
    iget-boolean v2, p0, Lanet/channel/util/AppLifecycle$1;->val$foreground:Z

    if-eqz v2, :cond_1c

    .line 75
    invoke-interface {v1}, Lanet/channel/util/AppLifecycle$AppLifecycleListener;->forground()V

    goto :goto_8

    .line 77
    :cond_1c
    invoke-interface {v1}, Lanet/channel/util/AppLifecycle$AppLifecycleListener;->background()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_8

    :catch_20
    move-exception v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "awcn.AppLifeCycle"

    const-string v5, "notifyListener exception."

    invoke-static {v4, v5, v2, v1, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_2d
    return-void
.end method
