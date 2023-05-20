.class Lcom/xiaomi/push/an$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/push/an;

.field private final a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/xiaomi/push/an$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaomi/push/an;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    const-string p1, "PackageProcessor"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/push/an$a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private a(ILcom/xiaomi/push/an$b;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v0}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v1}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    :goto_18
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/an$b;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/an$a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v0}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v0}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_15

    :cond_10
    const-wide v0, 0x7fffffffffffffffL

    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v2}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)Z

    move-result v2

    if-nez v2, :cond_4d

    :try_start_1d
    iget-object v2, p0, Lcom/xiaomi/push/an$a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/push/an$b;

    iget-object v3, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v3, v2}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;Lcom/xiaomi/push/an$b;)Lcom/xiaomi/push/an$b;

    if-eqz v2, :cond_3a

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/push/an$a;->a(ILcom/xiaomi/push/an$b;)V

    invoke-virtual {v2}, Lcom/xiaomi/push/an$b;->b()V

    const/4 v3, 0x1

    invoke-direct {p0, v3, v2}, Lcom/xiaomi/push/an$a;->a(ILcom/xiaomi/push/an$b;)V

    goto :goto_15

    :cond_3a
    iget-object v2, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v2}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)I

    move-result v2

    if-lez v2, :cond_15

    iget-object v2, p0, Lcom/xiaomi/push/an$a;->a:Lcom/xiaomi/push/an;

    invoke-static {v2}, Lcom/xiaomi/push/an;->a(Lcom/xiaomi/push/an;)V
    :try_end_47
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_47} :catch_48

    goto :goto_15

    :catch_48
    move-exception v2

    invoke-static {v2}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_15

    :cond_4d
    return-void
.end method
