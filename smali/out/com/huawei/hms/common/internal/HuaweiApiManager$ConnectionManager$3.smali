.class Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;->this$1:Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->access$600(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V

    return-void
.end method
