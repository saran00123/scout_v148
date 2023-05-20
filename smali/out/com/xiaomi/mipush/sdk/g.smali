.class Lcom/xiaomi/mipush/sdk/g;
.super Lcom/xiaomi/push/service/ax$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/mipush/sdk/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/mipush/sdk/f;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/push/service/ax$a;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCallback()V
    .registers 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/push/service/ax;->a(Landroid/content/Context;)Lcom/xiaomi/push/service/ax;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/push/ia;->ao:Lcom/xiaomi/push/ia;

    invoke-virtual {v1}, Lcom/xiaomi/push/ia;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/push/service/ax;->a(IZ)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/f;)Z

    move-result v1

    if-eq v1, v0, :cond_2b

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/f;Z)Z

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/g;->a:Lcom/xiaomi/mipush/sdk/f;

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/f;->a(Lcom/xiaomi/mipush/sdk/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/i;->b(Landroid/content/Context;)V

    :cond_2b
    return-void
.end method
