.class Lcom/huawei/hms/api/HuaweiApiClientImpl$c;
.super Ljava/lang/Object;
.source "HuaweiApiClientImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/api/HuaweiApiClientImpl;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/api/HuaweiApiClientImpl;


# direct methods
.method constructor <init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;->a:Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    if-eqz p1, :cond_28

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_8

    goto :goto_28

    :cond_8
    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "In connect, process time out"

    .line 4
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;->a:Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-static {p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_27

    .line 6
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;->a:Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-static {p1, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(Lcom/huawei/hms/api/HuaweiApiClientImpl;I)V

    .line 7
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;->a:Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-static {p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    :cond_27
    return v1

    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
.end method
