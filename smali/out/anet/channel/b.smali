.class Lanet/channel/b;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lanet/channel/entity/b;

.field final synthetic c:Lanet/channel/Session;


# direct methods
.method constructor <init>(Lanet/channel/Session;ILanet/channel/entity/b;)V
    .registers 4

    .line 260
    iput-object p1, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iput p2, p0, Lanet/channel/b;->a:I

    iput-object p3, p0, Lanet/channel/b;->b:Lanet/channel/entity/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "awcn.Session"

    const/4 v1, 0x0

    .line 264
    :try_start_3
    iget-object v2, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v2, v2, Lanet/channel/Session;->b:Ljava/util/Map;

    if-eqz v2, :cond_5b

    .line 265
    iget-object v2, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v2, v2, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lanet/channel/entity/EventCb;

    if-eqz v3, :cond_15

    .line 267
    iget-object v4, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->b:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 268
    iget v5, p0, Lanet/channel/b;->a:I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_4f

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 270
    :try_start_36
    iget-object v4, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget v5, p0, Lanet/channel/b;->a:I

    iget-object v6, p0, Lanet/channel/b;->b:Lanet/channel/entity/b;

    invoke-interface {v3, v4, v5, v6}, Lanet/channel/entity/EventCb;->onEvent(Lanet/channel/Session;ILanet/channel/entity/b;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_40

    goto :goto_15

    :catch_40
    move-exception v3

    .line 272
    :try_start_41
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v4, v4, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4e} :catch_4f

    goto :goto_15

    :catch_4f
    move-exception v2

    .line 280
    iget-object v3, p0, Lanet/channel/b;->c:Lanet/channel/Session;

    iget-object v3, v3, Lanet/channel/Session;->p:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "handleCallbacks"

    invoke-static {v0, v4, v3, v2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method
