.class Lcom/xiaomi/push/gg;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/gf;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/gf;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/gg;->a:Lcom/xiaomi/push/gf;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/gg;->a:Lcom/xiaomi/push/gf;

    invoke-static {v0}, Lcom/xiaomi/push/gf;->a(Lcom/xiaomi/push/gf;)Lcom/xiaomi/push/ga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/push/ga;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/push/gg;->a:Lcom/xiaomi/push/gf;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/push/gf;->c(ILjava/lang/Exception;)V

    :goto_12
    return-void
.end method
