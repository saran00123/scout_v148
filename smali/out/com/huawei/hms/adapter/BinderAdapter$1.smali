.class Lcom/huawei/hms/adapter/BinderAdapter$1;
.super Ljava/lang/Object;
.source "BinderAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/adapter/BinderAdapter;->postConnDelayHandle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/huawei/hms/adapter/BinderAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/hms/adapter/BinderAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter$1;->this$0:Lcom/huawei/hms/adapter/BinderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 3

    if-eqz p1, :cond_17

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_9

    goto :goto_17

    :cond_9
    const-string p1, "BinderAdapter"

    const-string v0, "In connect, bind core service time out"

    .line 5
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter$1;->this$0:Lcom/huawei/hms/adapter/BinderAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->access$000(Lcom/huawei/hms/adapter/BinderAdapter;)V

    const/4 p1, 0x1

    return p1

    :cond_17
    :goto_17
    const/4 p1, 0x0

    return p1
.end method
