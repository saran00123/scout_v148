.class final Lcom/taobao/accs/data/h;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/taobao/accs/net/b;

.field final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V
    .registers 4

    .line 77
    iput-object p1, p0, Lcom/taobao/accs/data/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/taobao/accs/data/h;->b:Lcom/taobao/accs/net/b;

    iput-object p3, p0, Lcom/taobao/accs/data/h;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 81
    invoke-static {}, Lcom/taobao/accs/data/g;->a()Lcom/taobao/accs/data/g;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/accs/data/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/accs/data/h;->b:Lcom/taobao/accs/net/b;

    iget-object v3, p0, Lcom/taobao/accs/data/h;->c:Landroid/content/Intent;

    invoke-static {v0, v1, v2, v3}, Lcom/taobao/accs/data/g;->a(Lcom/taobao/accs/data/g;Landroid/content/Context;Lcom/taobao/accs/net/b;Landroid/content/Intent;)V

    return-void
.end method
