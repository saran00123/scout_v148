.class Lcom/huawei/hms/common/internal/HuaweiApiManager$1;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager;->disconnectService(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

.field final synthetic val$api:Lcom/huawei/hms/common/HuaweiApi;

.field final synthetic val$completionSource:Lcom/huawei/hmf/tasks/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->val$api:Lcom/huawei/hms/common/HuaweiApi;

    iput-object p3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->val$completionSource:Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->this$0:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->val$api:Lcom/huawei/hms/common/HuaweiApi;

    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$1;->val$completionSource:Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-static {v0, v1, v2}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->access$000(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method
