.class Lcom/taobao/accs/base/BaseService$2;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/base/BaseService;


# direct methods
.method constructor <init>(Lcom/taobao/accs/base/BaseService;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/taobao/accs/base/BaseService$2;->this$0:Lcom/taobao/accs/base/BaseService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$2;->this$0:Lcom/taobao/accs/base/BaseService;

    new-instance v1, Lcom/taobao/accs/internal/ServiceImpl;

    iget-object v2, p0, Lcom/taobao/accs/base/BaseService$2;->this$0:Lcom/taobao/accs/base/BaseService;

    invoke-direct {v1, v2}, Lcom/taobao/accs/internal/ServiceImpl;-><init>(Landroid/app/Service;)V

    iput-object v1, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    .line 55
    iget-object v0, p0, Lcom/taobao/accs/base/BaseService$2;->this$0:Lcom/taobao/accs/base/BaseService;

    iget-object v0, v0, Lcom/taobao/accs/base/BaseService;->mBaseService:Lcom/taobao/accs/base/IBaseService;

    invoke-interface {v0}, Lcom/taobao/accs/base/IBaseService;->onCreate()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_25

    :catch_13
    move-exception v0

    const/4 v1, 0x1

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "BaseService"

    const-string v2, "create ServiceImpl error"

    invoke-static {v0, v2, v1}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    return-void
.end method
