.class public final Lcom/xiaomi/push/dw$j;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/a;

.field private a:Lcom/xiaomi/push/dw$b;

.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    sget-object v0, Lcom/xiaomi/push/a;->a:Lcom/xiaomi/push/a;

    iput-object v0, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/dw$b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$j;->a:I

    return-void
.end method

.method public static a([B)Lcom/xiaomi/push/dw$j;
    .registers 2

    new-instance v0, Lcom/xiaomi/push/dw$j;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$j;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/dw$j;->a([B)Lcom/xiaomi/push/e;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/dw$j;

    return-object p0
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$j;->a:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$j;->a:I

    return v0
.end method

.method public a()Lcom/xiaomi/push/a;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/a;

    return-object v0
.end method

.method public a()Lcom/xiaomi/push/dw$b;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/dw$b;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/dw$j;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$j;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/a;

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$j;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    if-eqz v0, :cond_29

    const/16 v1, 0xa

    if-eq v0, v1, :cond_21

    const/16 v1, 0x12

    if-eq v0, v1, :cond_15

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$j;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_15
    new-instance v0, Lcom/xiaomi/push/dw$b;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/b;->a(Lcom/xiaomi/push/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$j;->a(Lcom/xiaomi/push/dw$b;)Lcom/xiaomi/push/dw$j;

    goto :goto_0

    :cond_21
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Lcom/xiaomi/push/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$j;->a(Lcom/xiaomi/push/a;)Lcom/xiaomi/push/dw$j;

    goto :goto_0

    :cond_29
    return-object p0
.end method

.method public a(Lcom/xiaomi/push/dw$b;)Lcom/xiaomi/push/dw$j;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$j;->b:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$j;->a:Lcom/xiaomi/push/dw$b;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$j;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$j;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Lcom/xiaomi/push/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/a;)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Lcom/xiaomi/push/dw$b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)V

    :cond_1c
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$j;->a:Z

    return v0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Lcom/xiaomi/push/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/a;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$j;->a()Lcom/xiaomi/push/dw$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    iput v1, p0, Lcom/xiaomi/push/dw$j;->a:I

    return v1
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$j;->b:Z

    return v0
.end method
