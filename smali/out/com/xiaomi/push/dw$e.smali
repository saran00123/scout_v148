.class public final Lcom/xiaomi/push/dw$e;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/dw$b;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/dw$e;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->c:Ljava/lang/String;

    iput v0, p0, Lcom/xiaomi/push/dw$e;->b:I

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/dw$e;->a:Lcom/xiaomi/push/dw$b;

    iput v0, p0, Lcom/xiaomi/push/dw$e;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$e;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$e;->d:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$e;->d:I

    return v0
.end method

.method public a()Lcom/xiaomi/push/dw$b;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->a:Lcom/xiaomi/push/dw$b;

    return-object v0
.end method

.method public a(I)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->a:Z

    iput p1, p0, Lcom/xiaomi/push/dw$e;->a:I

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$e;
    .registers 3

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$e;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->c(I)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_16
    new-instance v0, Lcom/xiaomi/push/dw$b;

    invoke-direct {v0}, Lcom/xiaomi/push/dw$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/b;->a(Lcom/xiaomi/push/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->a(Lcom/xiaomi/push/dw$b;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_22
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->f(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_2a
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->e(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_32
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->d(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_3a
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->b(I)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_42
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->c(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_4a
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->b(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_52
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->a(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_5a
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$e;->a(I)Lcom/xiaomi/push/dw$e;

    goto :goto_0

    :sswitch_62
    return-object p0

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_62
        0x8 -> :sswitch_5a
        0x12 -> :sswitch_52
        0x1a -> :sswitch_4a
        0x22 -> :sswitch_42
        0x28 -> :sswitch_3a
        0x32 -> :sswitch_32
        0x3a -> :sswitch_2a
        0x42 -> :sswitch_22
        0x4a -> :sswitch_16
        0x50 -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Lcom/xiaomi/push/dw$b;)Lcom/xiaomi/push/dw$e;
    .registers 3

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->i:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->a:Lcom/xiaomi/push/dw$b;

    return-object p0

    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->b:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$e;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->b(II)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_38
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_46
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->f()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_54
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->g()Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->h()Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_71
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->i()Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Lcom/xiaomi/push/dw$b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)V

    :cond_80
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->j()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_8f
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->a:Z

    return v0
.end method

.method public b()I
    .registers 4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->b(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_41
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_51
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->f()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->g()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_71
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->h()Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_82
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->i()Z

    move-result v0

    if-eqz v0, :cond_93

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->a()Lcom/xiaomi/push/dw$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_93
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->j()Z

    move-result v0

    if-eqz v0, :cond_a4

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$e;->e()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a4
    iput v1, p0, Lcom/xiaomi/push/dw$e;->d:I

    return v1
.end method

.method public b(I)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->e:Z

    iput p1, p0, Lcom/xiaomi/push/dw$e;->b:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$e;->a:I

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->j:Z

    iput p1, p0, Lcom/xiaomi/push/dw$e;->c:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->d:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$e;->b:I

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->f:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->d:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$e;->c:I

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->g:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->e:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/push/dw$e;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$e;->h:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->f:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->h:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->i:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$e;->j:Z

    return v0
.end method
