.class public abstract Lcom/vivo/push/e;
.super Ljava/lang/Object;
.source "PushClientTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:Landroid/content/Context;

.field b:I

.field private c:Lcom/vivo/push/g;


# direct methods
.method public constructor <init>(Lcom/vivo/push/g;)V
    .registers 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/vivo/push/e;->b:I

    .line 16
    iput-object p1, p0, Lcom/vivo/push/e;->c:Lcom/vivo/push/g;

    .line 1035
    iget p1, p1, Lcom/vivo/push/g;->a:I

    .line 17
    iput p1, p0, Lcom/vivo/push/e;->b:I

    .line 18
    iget p1, p0, Lcom/vivo/push/e;->b:I

    if-ltz p1, :cond_19

    .line 21
    invoke-static {}, Lcom/vivo/push/d;->a()Lcom/vivo/push/d;

    move-result-object p1

    .line 1294
    iget-object p1, p1, Lcom/vivo/push/d;->e:Landroid/content/Context;

    .line 21
    iput-object p1, p0, Lcom/vivo/push/e;->a:Landroid/content/Context;

    return-void

    .line 19
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PushTask need a > 0 task id."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abstract a(Lcom/vivo/push/g;)V
.end method

.method public final run()V
    .registers 4

    .line 31
    iget-object v0, p0, Lcom/vivo/push/e;->a:Landroid/content/Context;

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/vivo/push/e;->c:Lcom/vivo/push/g;

    instance-of v1, v1, Lcom/vivo/push/b/n;

    if-nez v1, :cond_1d

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[\u6267\u884c\u6307\u4ee4]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/push/e;->c:Lcom/vivo/push/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/push/util/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_1d
    iget-object v0, p0, Lcom/vivo/push/e;->c:Lcom/vivo/push/g;

    invoke-virtual {p0, v0}, Lcom/vivo/push/e;->a(Lcom/vivo/push/g;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/push/e;->c:Lcom/vivo/push/g;

    if-nez v1, :cond_1d

    const-string v1, "[null]"

    goto :goto_21

    :cond_1d
    invoke-virtual {v1}, Lcom/vivo/push/g;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
