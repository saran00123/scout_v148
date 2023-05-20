.class Lcom/taobao/accs/base/BaseService$3;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/base/BaseService;

.field final synthetic val$flags:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/taobao/accs/base/BaseService;Landroid/content/Intent;II)V
    .registers 5

    .line 65
    iput-object p1, p0, Lcom/taobao/accs/base/BaseService$3;->this$0:Lcom/taobao/accs/base/BaseService;

    iput-object p2, p0, Lcom/taobao/accs/base/BaseService$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/taobao/accs/base/BaseService$3;->val$flags:I

    iput p4, p0, Lcom/taobao/accs/base/BaseService$3;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$3;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v0, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    if-eqz v0, :cond_14

    .line 69
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$3;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v0, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    iget-object v1, p0, Lcom/taobao/accs/base/BaseService$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/taobao/accs/base/BaseService$3;->val$flags:I

    iget v3, p0, Lcom/taobao/accs/base/BaseService$3;->val$startId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/accs/base/IBaseService;->onStartCommand(Landroid/content/Intent;II)I

    goto :goto_24

    .line 71
    :cond_14
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$3;->this$0:Lcom/taobao/accs/base/BaseService;

    invoke-virtual {v0}, Lcom/taobao/accs/base/BaseService;->onCreate()V

    .line 72
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$3;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v1, p0, Lcom/taobao/accs/base/BaseService$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/taobao/accs/base/BaseService$3;->val$flags:I

    iget v3, p0, Lcom/taobao/accs/base/BaseService$3;->val$startId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/accs/base/BaseService;->onStartCommand(Landroid/content/Intent;II)I

    :goto_24
    return-void
.end method
