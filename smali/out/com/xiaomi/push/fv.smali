.class Lcom/xiaomi/push/fv;
.super Lcom/xiaomi/push/service/bs$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/fu;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/push/fv;->a:Lcom/xiaomi/push/fu;

    invoke-direct {p0}, Lcom/xiaomi/push/service/bs$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/dw$b;)V
    .registers 3

    invoke-virtual {p1}, Lcom/xiaomi/push/dw$b;->e()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/xiaomi/push/fu;->a()Lcom/xiaomi/push/fu;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/push/dw$b;->e()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/fu;->a(I)V

    :cond_11
    return-void
.end method
