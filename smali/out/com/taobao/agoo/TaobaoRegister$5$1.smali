.class Lcom/taobao/agoo/TaobaoRegister$5$1;
.super Lcom/taobao/agoo/IListAliasCallbackInner;
.source "Taobao"


# instance fields
.field final synthetic this$0:Lcom/taobao/agoo/TaobaoRegister$5;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/TaobaoRegister$5;)V
    .registers 2

    .line 500
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    invoke-direct {p0}, Lcom/taobao/agoo/IListAliasCallbackInner;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 508
    iget-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object p1, p1, Lcom/taobao/agoo/TaobaoRegister$5;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/taobao/agoo/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    const-string p2, "removeAlias fail"

    if-eqz p1, :cond_50

    .line 509
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_50

    const/4 v0, 0x0

    .line 510
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object v0, v0, Lcom/taobao/agoo/TaobaoRegister$5;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/taobao/agoo/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_46

    if-nez p1, :cond_2c

    goto :goto_46

    .line 515
    :cond_2c
    iget-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object p2, p2, Lcom/taobao/agoo/TaobaoRegister$5;->val$callback:Lcom/taobao/agoo/ICallback;

    iput-object p1, p2, Lcom/taobao/agoo/ICallback;->extra:Ljava/lang/String;

    .line 516
    iget-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object p2, p2, Lcom/taobao/agoo/TaobaoRegister$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object v1, v1, Lcom/taobao/agoo/TaobaoRegister$5;->val$callback:Lcom/taobao/agoo/ICallback;

    new-instance v2, Lcom/taobao/agoo/TaobaoRegister$d;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/taobao/agoo/TaobaoRegister$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/agoo/b;)V

    const-string p1, "removeAlias"

    invoke-static {p1, p2, v1, v2}, Lcom/taobao/agoo/TaobaoRegister;->access$300(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V

    goto :goto_59

    .line 513
    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object p1, p1, Lcom/taobao/agoo/TaobaoRegister$5;->val$callback:Lcom/taobao/agoo/ICallback;

    const-string v0, "local alias or token is empty"

    invoke-virtual {p1, p2, v0}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_59

    .line 519
    :cond_50
    iget-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object p1, p1, Lcom/taobao/agoo/TaobaoRegister$5;->val$callback:Lcom/taobao/agoo/ICallback;

    const-string v0, "local alias list is empty"

    invoke-virtual {p1, p2, v0}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_59
    return-void
.end method

.method public onSuccess(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object v0, v0, Lcom/taobao/agoo/TaobaoRegister$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/agoo/TaobaoRegister$5$1;->this$0:Lcom/taobao/agoo/TaobaoRegister$5;

    iget-object v1, v1, Lcom/taobao/agoo/TaobaoRegister$5;->val$callback:Lcom/taobao/agoo/ICallback;

    invoke-static {v0, p1, v1}, Lcom/taobao/agoo/TaobaoRegister;->access$400(Landroid/content/Context;Ljava/util/Map;Lcom/taobao/agoo/ICallback;)V

    return-void
.end method
