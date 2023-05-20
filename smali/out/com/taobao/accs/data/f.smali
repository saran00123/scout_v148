.class Lcom/taobao/accs/data/f;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/taobao/accs/data/d;


# direct methods
.method constructor <init>(Lcom/taobao/accs/data/d;)V
    .registers 2

    .line 1056
    iput-object p1, p0, Lcom/taobao/accs/data/f;->a:Lcom/taobao/accs/data/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1059
    iget-object v0, p0, Lcom/taobao/accs/data/f;->a:Lcom/taobao/accs/data/d;

    iget-object v0, v0, Lcom/taobao/accs/data/d;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    if-eqz v0, :cond_d

    .line 1060
    iget-object v0, p0, Lcom/taobao/accs/data/f;->a:Lcom/taobao/accs/data/d;

    iget-object v0, v0, Lcom/taobao/accs/data/d;->c:Lcom/taobao/accs/ut/monitor/TrafficsMonitor;

    invoke-virtual {v0}, Lcom/taobao/accs/ut/monitor/TrafficsMonitor;->a()V

    :cond_d
    return-void
.end method
