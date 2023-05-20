.class public abstract Lcom/vivo/push/g;
.super Ljava/lang/Object;
.source "PushCommand.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lcom/vivo/push/g;->a:I

    if-ltz p1, :cond_b

    .line 22
    iput p1, p0, Lcom/vivo/push/g;->a:I

    return-void

    .line 20
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PushCommand: the value of command must > 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final d(Lcom/vivo/push/a;)V
    .registers 4

    .line 90
    iget v0, p0, Lcom/vivo/push/g;->a:I

    const-string v1, "command"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 91
    iget-object v0, p0, Lcom/vivo/push/g;->b:Ljava/lang/String;

    const-string v1, "client_pkgname"

    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/vivo/push/g;->b(Lcom/vivo/push/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 5

    .line 69
    invoke-static {p1}, Lcom/vivo/push/a;->a(Landroid/content/Intent;)Lcom/vivo/push/a;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p1, "PushCommand"

    const-string v0, "bundleWapper is null"

    .line 71
    invoke-static {p1, v0}, Lcom/vivo/push/util/n;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1084
    :cond_e
    iget v1, p0, Lcom/vivo/push/g;->a:I

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Lcom/vivo/push/a;->a(Ljava/lang/String;I)V

    .line 1085
    invoke-direct {p0, v0}, Lcom/vivo/push/g;->d(Lcom/vivo/push/a;)V

    .line 1182
    iget-object v0, v0, Lcom/vivo/push/a;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_1f

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1f
    return-void
.end method

.method public final a(Lcom/vivo/push/a;)V
    .registers 4

    .line 60
    iget v0, p0, Lcom/vivo/push/g;->a:I

    invoke-static {v0}, Lcom/vivo/push/h;->a(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    const-string v1, "method"

    .line 62
    invoke-virtual {p1, v1, v0}, Lcom/vivo/push/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1}, Lcom/vivo/push/g;->d(Lcom/vivo/push/a;)V

    return-void
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b(Lcom/vivo/push/a;)V
.end method

.method public abstract c(Lcom/vivo/push/a;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
