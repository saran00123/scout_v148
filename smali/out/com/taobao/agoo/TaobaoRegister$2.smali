.class final Lcom/taobao/agoo/TaobaoRegister$2;
.super Lcom/taobao/agoo/ICallback;
.source "Taobao"


# instance fields
.field final synthetic val$alias:Ljava/lang/String;

.field final synthetic val$callback:Lcom/taobao/agoo/ICallback;

.field final synthetic val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$targetList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/taobao/agoo/ICallback;)V
    .registers 5

    .line 374
    iput-object p1, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$targetList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$alias:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$callback:Lcom/taobao/agoo/ICallback;

    invoke-direct {p0}, Lcom/taobao/agoo/ICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 385
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 386
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$callback:Lcom/taobao/agoo/ICallback;

    invoke-virtual {v0, p1, p2}, Lcom/taobao/agoo/ICallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$targetList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$alias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$failed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$targetList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 379
    iget-object v0, p0, Lcom/taobao/agoo/TaobaoRegister$2;->val$callback:Lcom/taobao/agoo/ICallback;

    invoke-virtual {v0}, Lcom/taobao/agoo/ICallback;->onSuccess()V

    :cond_1c
    return-void
.end method
