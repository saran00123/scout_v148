.class public final Lcom/xiaomi/push/dw$a;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private a:J

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

.field private e:I

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/dw$a;->a:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/push/dw$a;->a:J

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput v2, p0, Lcom/xiaomi/push/dw$a;->b:I

    iput v0, p0, Lcom/xiaomi/push/dw$a;->c:I

    iput v0, p0, Lcom/xiaomi/push/dw$a;->d:I

    iput-object v1, p0, Lcom/xiaomi/push/dw$a;->f:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/dw$a;->e:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$a;->e:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->b()I

    :cond_7
    iget v0, p0, Lcom/xiaomi/push/dw$a;->e:I

    return v0
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/xiaomi/push/dw$a;->a:J

    return-wide v0
.end method

.method public a()Lcom/xiaomi/push/dw$a;
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->f:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/push/dw$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->a:Z

    iput p1, p0, Lcom/xiaomi/push/dw$a;->a:I

    return-object p0
.end method

.method public a(J)Lcom/xiaomi/push/dw$a;
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->b:Z

    iput-wide p1, p0, Lcom/xiaomi/push/dw$a;->a:J

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$a;
    .registers 4

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_68

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/dw$a;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->f(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->d(I)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_1e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->c(I)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_26
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->b(I)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_2e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->e(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_36
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->d(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_3e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->c(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_46
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->b(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_4e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->a(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_56
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/push/dw$a;->a(J)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_5e
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/dw$a;->a(I)Lcom/xiaomi/push/dw$a;

    goto :goto_0

    :sswitch_66
    return-object p0

    nop

    :sswitch_data_68
    .sparse-switch
        0x0 -> :sswitch_66
        0x8 -> :sswitch_5e
        0x10 -> :sswitch_56
        0x1a -> :sswitch_4e
        0x22 -> :sswitch_46
        0x2a -> :sswitch_3e
        0x32 -> :sswitch_36
        0x3a -> :sswitch_2e
        0x40 -> :sswitch_26
        0x48 -> :sswitch_1e
        0x50 -> :sswitch_16
        0x5a -> :sswitch_e
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/dw$a;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/dw$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_e
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/xiaomi/push/c;->b(IJ)V

    :cond_1c
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_2a
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_38
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_46
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_54
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->g()Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_62
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->h()Z

    move-result v0

    if-eqz v0, :cond_71

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_71
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->i()Z

    move-result v0

    if-eqz v0, :cond_80

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_80
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->j()Z

    move-result v0

    if-eqz v0, :cond_8f

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_8f
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->k()Z

    move-result v0

    if-eqz v0, :cond_9e

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_9e
    return-void
.end method

.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->a:Z

    return v0
.end method

.method public b()I
    .registers 5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_11
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->b()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/push/c;->b(IJ)I

    move-result v0

    add-int/2addr v1, v0

    :cond_21
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_31
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()Z

    move-result v0

    if-eqz v0, :cond_41

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_41
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_51
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_61
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->g()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_71
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->h()Z

    move-result v0

    if-eqz v0, :cond_82

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_82
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->i()Z

    move-result v0

    if-eqz v0, :cond_93

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->e()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_93
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->j()Z

    move-result v0

    if-eqz v0, :cond_a4

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_a4
    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->k()Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/xiaomi/push/dw$a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_b5
    iput v1, p0, Lcom/xiaomi/push/dw$a;->e:I

    return v1
.end method

.method public b(I)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->h:Z

    iput p1, p0, Lcom/xiaomi/push/dw$a;->b:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->d:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->b:Z

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$a;->a:I

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->i:Z

    iput p1, p0, Lcom/xiaomi/push/dw$a;->c:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->c:Z

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$a;->b:I

    return v0
.end method

.method public d(I)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->j:Z

    iput p1, p0, Lcom/xiaomi/push/dw$a;->d:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->f:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->d:Z

    return v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$a;->c:I

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->g:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->e:Z

    return v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/xiaomi/push/dw$a;->d:I

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/push/dw$a;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/dw$a;->k:Z

    iput-object p1, p0, Lcom/xiaomi/push/dw$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/push/dw$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->f:Z

    return v0
.end method

.method public g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->g:Z

    return v0
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->h:Z

    return v0
.end method

.method public i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->i:Z

    return v0
.end method

.method public j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->j:Z

    return v0
.end method

.method public k()Z
    .registers 2

    iget-boolean v0, p0, Lcom/xiaomi/push/dw$a;->k:Z

    return v0
.end method
