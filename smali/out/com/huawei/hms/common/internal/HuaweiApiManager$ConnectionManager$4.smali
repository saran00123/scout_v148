.class Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnectionSuspended(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

.field final synthetic val$cause:I


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iput p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->val$cause:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    iget v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;->val$cause:I

    invoke-static {v0, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$700(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V

    return-void
.end method