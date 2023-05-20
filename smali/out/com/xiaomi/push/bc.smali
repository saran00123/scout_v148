.class Lcom/xiaomi/push/bc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic a:Lcom/xiaomi/push/ba$b;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ba$b;Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iput-object p2, p0, Lcom/xiaomi/push/bc;->a:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x2

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v2, v2, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v2}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/push/ba$a;

    iget-object v4, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v4, v4, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/xiaomi/push/ba$a;-><init>(Lcom/xiaomi/push/ba;Lcom/xiaomi/push/bb;)V

    iget-object v4, p0, Lcom/xiaomi/push/bc;->a:Landroid/os/IBinder;

    const-string v5, "GUID"

    invoke-static {v4, v1, v2, v5}, Lcom/xiaomi/push/ba$c;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/ba$a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/bc;->a:Landroid/os/IBinder;

    const-string v5, "OUID"

    invoke-static {v4, v1, v2, v5}, Lcom/xiaomi/push/ba$c;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/ba$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/bc;->a:Landroid/os/IBinder;

    const-string v5, "DUID"

    invoke-static {v4, v1, v2, v5}, Lcom/xiaomi/push/ba$c;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xiaomi/push/ba$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/push/bc;->a:Landroid/os/IBinder;

    const-string v5, "AUID"

    invoke-static {v4, v1, v2, v5}, Lcom/xiaomi/push/ba$c;->a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/xiaomi/push/ba$a;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1, v3}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;Lcom/xiaomi/push/ba$a;)Lcom/xiaomi/push/ba$a;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4e} :catch_a1
    .catchall {:try_start_1 .. :try_end_4e} :catchall_77

    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)V

    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1, v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;I)I

    iget-object v0, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v0, v0, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_65
    iget-object v0, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v0, v0, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_70} :catch_73
    .catchall {:try_start_65 .. :try_end_70} :catchall_71

    goto :goto_73

    :catchall_71
    move-exception v0

    goto :goto_75

    :catch_73
    :goto_73
    :try_start_73
    monitor-exit v1

    goto :goto_c7

    :goto_75
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_71

    throw v0

    :catchall_77
    move-exception v1

    iget-object v2, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v2, v2, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v2}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)V

    iget-object v2, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v2, v2, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v2, v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;I)I

    iget-object v0, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v0, v0, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_8f
    iget-object v0, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v0, v0, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9a} :catch_9d
    .catchall {:try_start_8f .. :try_end_9a} :catchall_9b

    goto :goto_9d

    :catchall_9b
    move-exception v0

    goto :goto_9f

    :catch_9d
    :goto_9d
    :try_start_9d
    monitor-exit v2
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9b

    throw v1

    :goto_9f
    :try_start_9f
    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_9f .. :try_end_a0} :catchall_9b

    throw v0

    :catch_a1
    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)V

    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1, v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;I)I

    iget-object v0, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v0, v0, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v0}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_b8
    iget-object v1, p0, Lcom/xiaomi/push/bc;->a:Lcom/xiaomi/push/ba$b;

    iget-object v1, v1, Lcom/xiaomi/push/ba$b;->a:Lcom/xiaomi/push/ba;

    invoke-static {v1}, Lcom/xiaomi/push/ba;->a(Lcom/xiaomi/push/ba;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c3} :catch_c6
    .catchall {:try_start_b8 .. :try_end_c3} :catchall_c4

    goto :goto_c6

    :catchall_c4
    move-exception v1

    goto :goto_c8

    :catch_c6
    :goto_c6
    :try_start_c6
    monitor-exit v0

    :goto_c7
    return-void

    :goto_c8
    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c4

    throw v1
.end method
