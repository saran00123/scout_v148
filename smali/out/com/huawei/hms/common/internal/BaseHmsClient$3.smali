.class Lcom/huawei/hms/common/internal/BaseHmsClient$3;
.super Ljava/lang/Object;
.source "BaseHmsClient.java"

# interfaces
.implements Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/common/internal/BaseHmsClient;->resolution(Lcom/huawei/hms/adapter/AvailableAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/common/internal/BaseHmsClient;


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$3;->this$0:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .registers 3

    if-nez p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$3;->this$0:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->access$700(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    goto :goto_d

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient$3;->this$0:Lcom/huawei/hms/common/internal/BaseHmsClient;

    invoke-static {v0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->access$300(Lcom/huawei/hms/common/internal/BaseHmsClient;I)V

    :goto_d
    return-void
.end method
