.class public final Lcom/xiaomi/push/dw$b;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z

.field private d:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$b;->b:Z

    iput v0, p0, Lcom/xiaomi/push/dw$b;->a:I

    iput v0, p0, Lcom/xiaomi/push/dw$b;->b:I

    iput v0, p0, Lcom/xiaomi/push/dw$b;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$b;->d:I

    return-void
.end method

.method public static a([B)Lcom/xiaomi/push/dw$b;
    .registers 2

    new-instance v0, Lcom/xiaomi/push/dw$b;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dw$b;->a([B)Lcom/xiaomi/push/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/dw$b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$b;->d:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$b;->d:I

    return v0
.end method

.method public a(I)Lcom/xiaomi/push/dw$b;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$b;->c:Z

    iput p1, p0, Lcom/xiaomi/push/dw$b;->a:I

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$b;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v1, 0x8

    if-eq v0, v1, :cond_35

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2d

    const/16 v1, 0x20

    if-eq v0, v1, :cond_25

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1d

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$b;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$b;->c(I)Lcom/xiaomi/push/dw$b;

    goto :goto_0

    :cond_25
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$b;->b(I)Lcom/xiaomi/push/dw$b;

    goto :goto_0

    :cond_2d
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$b;->a(I)Lcom/xiaomi/push/dw$b;

    goto :goto_0

    :cond_35
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$b;->a(Z)Lcom/xiaomi/push/dw$b;

    goto :goto_0

    :cond_3d
    return-object p0
.end method

.method public a(Z)Lcom/xiaomi/push/dw$b;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$b;->a:Z

    iput-boolean p1, p0, Lcom/xiaomi/push/dw$b;->b:Z

    return-object p0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$b;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->a()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(IZ)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->c()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->d()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_2a
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->e()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_38
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$b;->b:Z

    return v0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->a()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(IZ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->c()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->d()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->e()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$b;->e()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_41
    iput v1, p0, Lcom/xiaomi/push/dw$b;->d:I

    return v1
.end method

.method public b(I)Lcom/xiaomi/push/dw$b;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$b;->d:Z

    iput p1, p0, Lcom/xiaomi/push/dw$b;->b:I

    return-object p0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$b;->a:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$b;->a:I

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/dw$b;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$b;->e:Z

    iput p1, p0, Lcom/xiaomi/push/dw$b;->c:I

    return-object p0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$b;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$b;->b:I

    return v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$b;->d:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$b;->c:I

    return v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$b;->e:Z

    return v0
.end method
