.class Lanet/channel/session/e;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanet/channel/request/Request;

.field final synthetic b:Lanet/channel/session/d;


# direct methods
.method constructor <init>(Lanet/channel/session/d;Lanet/channel/request/Request;)V
    .registers 3

    .line 85
    iput-object p1, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    iput-object p2, p0, Lanet/channel/session/e;->a:Lanet/channel/request/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 88
    iget-object v0, p0, Lanet/channel/session/e;->a:Lanet/channel/request/Request;

    const/4 v1, 0x0

    .line 1069
    invoke-static {v0, v1}, Lanet/channel/session/b;->a(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/session/b$a;

    move-result-object v0

    .line 89
    iget v1, v0, Lanet/channel/session/b$a;->a:I

    if-lez v1, :cond_18

    .line 90
    iget-object v0, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    const/4 v1, 0x4

    new-instance v2, Lanet/channel/entity/b;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lanet/channel/entity/b;-><init>(I)V

    invoke-static {v0, v1, v2}, Lanet/channel/session/d;->a(Lanet/channel/session/d;ILanet/channel/entity/b;)V

    goto :goto_28

    .line 92
    :cond_18
    iget-object v1, p0, Lanet/channel/session/e;->b:Lanet/channel/session/d;

    new-instance v2, Lanet/channel/entity/b;

    iget v0, v0, Lanet/channel/session/b$a;->a:I

    const/16 v3, 0x100

    const-string v4, "Http connect fail"

    invoke-direct {v2, v3, v0, v4}, Lanet/channel/entity/b;-><init>(IILjava/lang/String;)V

    invoke-static {v1, v3, v2}, Lanet/channel/session/d;->b(Lanet/channel/session/d;ILanet/channel/entity/b;)V

    :goto_28
    return-void
.end method
