.class Lcom/xiaomi/push/service/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic a:Z


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xiaomi/push/service/an;->a:Ljava/util/List;

    iput-boolean p2, p0, Lcom/xiaomi/push/service/an;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "www.baidu.com:80"

    invoke-static {v0}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/push/service/an;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_24

    invoke-static {v2}, Lcom/xiaomi/push/service/am;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_24

    :cond_22
    const/4 v0, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    move v0, v3

    :goto_25
    if-eqz v0, :cond_c

    iget-boolean v2, p0, Lcom/xiaomi/push/service/an;->a:Z

    if-nez v2, :cond_c

    :cond_2b
    if-eqz v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v3, 0x2

    :goto_2f
    invoke-static {v3}, Lcom/xiaomi/push/fw;->a(I)V

    return-void
.end method
