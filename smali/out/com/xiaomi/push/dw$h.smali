.class public final Lcom/xiaomi/push/dw$h;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field private a:I

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/dw$h;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/dw$h;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$h;->b:I

    return-void
.end method

.method public static a([B)Lcom/xiaomi/push/dw$h;
    .registers 2

    new-instance v0, Lcom/xiaomi/push/dw$h;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$h;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dw$h;->a([B)Lcom/xiaomi/push/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/dw$h;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$h;->b:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$h;->b:I

    return v0
.end method

.method public a(I)Lcom/xiaomi/push/dw$h;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$h;->a:Z

    iput p1, p0, Lcom/xiaomi/push/dw$h;->a:I

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$h;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    if-eqz v0, :cond_25

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$h;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$h;->a(Ljava/lang/String;)Lcom/xiaomi/push/dw$h;

    goto :goto_0

    :cond_1d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$h;->a(I)Lcom/xiaomi/push/dw$h;

    goto :goto_0

    :cond_25
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/dw$h;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$h;->b:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$h;->a:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$h;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$h;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$h;->a:Z

    return v0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    iput v1, p0, Lcom/xiaomi/push/dw$h;->b:I

    return v1
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$h;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$h;->a:I

    return v0
.end method
