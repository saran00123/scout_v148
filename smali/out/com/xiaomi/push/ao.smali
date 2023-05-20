.class Lcom/xiaomi/push/ao;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/push/an;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/an;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/xiaomi/push/ao;->a:Lcom/xiaomi/push/an;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/push/an$b;

    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_c

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->a()V

    goto :goto_14

    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    invoke-virtual {v0}, Lcom/xiaomi/push/an$b;->c()V

    :cond_14
    :goto_14
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
