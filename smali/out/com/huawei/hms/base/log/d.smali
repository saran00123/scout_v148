.class public Lcom/huawei/hms/base/log/d;
.super Ljava/lang/Object;
.source "LogCatNode.java"

# interfaces
.implements Lcom/huawei/hms/base/log/b;


# instance fields
.field public a:Lcom/huawei/hms/base/log/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/base/log/d;->a:Lcom/huawei/hms/base/log/b;

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/base/log/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HMSSDK_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p4}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/base/log/d;->a:Lcom/huawei/hms/base/log/b;

    if-eqz v0, :cond_1b

    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/huawei/hms/base/log/b;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method
