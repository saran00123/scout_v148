.class public Lcom/huawei/hms/framework/common/RunnableEnhance;
.super Ljava/lang/Object;
.source "RunnableEnhance.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final TRANCELOGO:Ljava/lang/String; = " -->"


# instance fields
.field private parentName:Ljava/lang/String;

.field private proxy:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/framework/common/RunnableEnhance;->parentName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/huawei/hms/framework/common/RunnableEnhance;->proxy:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public getParentName()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/huawei/hms/framework/common/RunnableEnhance;->parentName:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/framework/common/RunnableEnhance;->proxy:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
