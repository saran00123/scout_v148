.class Lcom/taobao/accs/base/BaseService$5;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/base/BaseService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/base/BaseService;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/taobao/accs/base/BaseService$5;->this$0:Lcom/taobao/accs/base/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$5;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v0, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    if-eqz v0, :cond_12

    .line 115
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$5;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v0, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    invoke-interface {v0}, Lcom/taobao/accs/base/IBaseService;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$5;->this$0:Lcom/taobao/accs/base/BaseService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    :cond_12
    return-void
.end method
