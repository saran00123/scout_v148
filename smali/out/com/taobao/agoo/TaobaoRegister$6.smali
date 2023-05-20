.class final Lcom/taobao/agoo/TaobaoRegister$6;
.super Lcom/taobao/agoo/ICallback;
.source "Taobao"


# instance fields
.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/agoo/ICallback;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/taobao/agoo/ICallback;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 592
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$callback:Lcom/taobao/agoo/ICallback;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$alias:Ljava/lang/String;

    invoke-direct {p0}, Lcom/taobao/agoo/ICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 600
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$context:Landroid/content/Context;

    new-instance v1, Lcom/taobao/agoo/TaobaoRegister$6$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/taobao/agoo/TaobaoRegister$6$1;-><init>(Lcom/taobao/agoo/TaobaoRegister$6;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/taobao/agoo/TaobaoRegister$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/taobao/agoo/TaobaoRegister$c;-><init>(Lcom/taobao/agoo/b;)V

    const-string p2, "listAlias"

    invoke-static {p2, v0, v1, p1}, Lcom/taobao/agoo/TaobaoRegister;->access$300(Ljava/lang/String;Landroid/content/Context;Lcom/taobao/agoo/ICallback;Lcom/taobao/agoo/TaobaoRegister$b;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    .line 595
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$6;->val$callback:Lcom/taobao/agoo/ICallback;

    invoke-virtual {v0}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    return-void
.end method
