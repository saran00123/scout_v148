.class Lcom/xiaomi/push/ar$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/ar;


# direct methods
.method private constructor <init>(Lcom/xiaomi/push/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/push/ar;Lcom/xiaomi/push/as;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/xiaomi/push/ar$a;-><init>(Lcom/xiaomi/push/ar;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const/4 p1, 0x2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar$b;->a(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar$b;->a(Landroid/os/IBinder;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;Z)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_56
    .catchall {:try_start_1 .. :try_end_13} :catchall_34

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_24
    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_30
    .catchall {:try_start_24 .. :try_end_2d} :catchall_2e

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_32

    :catch_30
    :goto_30
    :try_start_30
    monitor-exit p2

    goto :goto_74

    :goto_32
    monitor-exit p2
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_2e

    throw p1

    :catchall_34
    move-exception p2

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {v0}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object v0, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {v0, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_46
    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_52
    .catchall {:try_start_46 .. :try_end_4f} :catchall_50

    goto :goto_52

    :catchall_50
    move-exception p1

    goto :goto_54

    :catch_52
    :goto_52
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_50

    throw p2

    :goto_54
    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_50

    throw p1

    :catch_56
    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)V

    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2, p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;I)I

    iget-object p1, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p1}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_67
    iget-object p2, p0, Lcom/xiaomi/push/ar$a;->a:Lcom/xiaomi/push/ar;

    invoke-static {p2}, Lcom/xiaomi/push/ar;->a(Lcom/xiaomi/push/ar;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_70} :catch_73
    .catchall {:try_start_67 .. :try_end_70} :catchall_71

    goto :goto_73

    :catchall_71
    move-exception p2

    goto :goto_75

    :catch_73
    :goto_73
    :try_start_73
    monitor-exit p1

    :goto_74
    return-void

    :goto_75
    monitor-exit p1
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_71

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
