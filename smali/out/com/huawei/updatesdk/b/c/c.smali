.class public abstract Lcom/huawei/updatesdk/b/c/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method abstract c()Ljava/lang/String;
.end method

.method abstract d()Ljava/lang/String;
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/huawei/updatesdk/b/c/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    :cond_1d
    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    return-object v0

    :cond_b
    invoke-virtual {p0}, Lcom/huawei/updatesdk/b/c/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    :cond_1d
    iget-object v0, p0, Lcom/huawei/updatesdk/b/c/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract g()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
